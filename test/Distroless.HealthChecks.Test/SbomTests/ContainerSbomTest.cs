using System.Text;
using System.Text.Json.Nodes;
using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;

namespace Distroless.HealthChecks.Test.SbomTests;

/// <summary>
///     Checks what a consumer's SBOM scanner finds after the documented <c>COPY --from=... / /healthchecks</c>.
/// </summary>
public sealed class ContainerSbomTest(ITestContextAccessor testContext) : IAsyncLifetime
{
    private const string Dockerfile = "test/Distroless.Sample.WebApp/Dockerfile";
    private const string Tags = "test/Distroless.Sample.WebApp/urlsTest.bases.Dockerfile";
    private const string PackageName = "Alexaka1.Distroless.HealthChecks";

    private IFutureDockerImage? _image;
    private IContainer? _container;

    public async ValueTask InitializeAsync()
    {
        var cancellationToken = testContext.Current.CancellationToken;
        string baseImageType = Utils.CurrentBaseImageType();
        var runtime = Utils.FilterByBaseImageType(Utils.GetImageTagsFromDockerfile(Tags), baseImageType)
            .First(image => image.Tag.StartsWith("11.0", StringComparison.Ordinal));

        _image = new ImageFromDockerfileBuilder()
            .WithBuildArgument("RUNTIME_TAG", runtime.Tag)
            .WithBuildArgument("IMAGE", runtime.Image)
            .WithBuildArgument("BASE_IMAGE_TYPE", baseImageType)
            .WithBuildArgument("HEALTHCHECK_IMAGE", Utils.HealthCheckImage())
            .WithDockerfile(Path.GetFileName(Dockerfile))
            .WithContextDirectory(CommonDirectoryPath.GetSolutionDirectory().DirectoryPath)
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(), Path.GetDirectoryName(Dockerfile))
            .Build();
        await _image.CreateAsync(cancellationToken);

        _container = new ContainerBuilder(_image)
            .WithWaitStrategy(Wait.ForUnixContainer().UntilMessageIsLogged(
                Regex.Escape("Application started. Press Ctrl+C to shut down."),
                strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30))))
            .Build();
        await _container.StartAsync(cancellationToken);
    }

    public async ValueTask DisposeAsync()
    {
        if (_container is not null)
        {
            await _container.DisposeAsync();
        }

        if (_image is not null)
        {
            await _image.DisposeAsync();
        }
    }

    [Fact]
    public async Task Copied_image_root_identifies_the_tool_and_its_runtime_pack()
    {
        var cancellationToken = testContext.Current.CancellationToken;
        var bom = JsonNode.Parse(
            await _container!.ReadFileAsync("/healthchecks/Distroless.HealthChecks.cdx.json", cancellationToken))!;

        var root = bom["metadata"]!["component"]!;
        Assert.Equal(PackageName, root["name"]!.GetValue<string>());
        string version = root["version"]!.GetValue<string>();
        Assert.Equal($"pkg:generic/{PackageName}@{version}", root["purl"]!.GetValue<string>());
        Assert.Contains(bom["components"]!.AsArray(), component =>
            component!["purl"]!.GetValue<string>().StartsWith("pkg:nuget/Microsoft.NETCore.App.Runtime.", StringComparison.Ordinal));

        // Syft reads this note from the executable alone, so it is all a binary-only copy keeps.
        byte[] executable = await _container.ReadFileAsync("/healthchecks/Distroless.HealthChecks", cancellationToken);
        byte[] note = Encoding.UTF8.GetBytes($$"""{"type":"generic","name":"{{PackageName}}","version":"{{version}}",""");
        Assert.True(executable.AsSpan().IndexOf(note) >= 0, "The executable has no ELF package note for this version.");
    }
}
