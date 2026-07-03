using System.Diagnostics;
using System.Text.Json;
using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;
using JetBrains.Annotations;

namespace Distroless.HealthChecks.Test.ParameterTests;

public sealed class NoneLogLevelTest(ITestOutputHelper output, ITestContextAccessor testContext) : IAsyncLifetime
{
    private const string SampleDockerfile = "test/Distroless.Sample.WebApp/Dockerfile";
    private const string RuntimeBases =
        "test/Distroless.Sample.WebApp/healthyContainerTest.runtime-deps10.bases.Dockerfile";
    private const string UnhealthyUri = "http://localhost:8080/healthz/1";

    private IContainer? _container;
    private IFutureDockerImage? _image;

    public ValueTask InitializeAsync() => ValueTask.CompletedTask;

    public async ValueTask DisposeAsync()
    {
        if (_image is not null)
        {
            await _image.DisposeAsync();
        }

        if (_container is not null)
        {
            await _container.DisposeAsync();
        }
    }

    [Fact]
    [UsedImplicitly]
    public async Task Container_stays_unhealthy_when_default_log_level_is_none()
    {
        var images = Utils.GetImageTagsFromDockerfile(RuntimeBases);
        var image = Utils.FilterByBaseImageType(images, Utils.CurrentBaseImageType()).FirstOrDefault()
            ?? throw new InvalidOperationException(
                $"No runtime image found for base image type '{Utils.CurrentBaseImageType()}'.");

        try
        {
            await Init(image, testContext.Current.CancellationToken);
            await _container!.StartAsync(testContext.Current.CancellationToken);
            await Task.Delay(TimeSpan.FromSeconds(5), testContext.Current.CancellationToken);
            await _container.StartAsync(testContext.Current.CancellationToken);

            Assert.Equal(HealthStatus.UnHealthy, _container.Health switch
            {
                TestcontainersHealthStatus.Healthy => HealthStatus.Healthy,
                _ => HealthStatus.UnHealthy,
            });
        }
        catch (Exception e)
        {
            output.WriteLine(e.ToString());
            if (_container is not null)
            {
                var logs = await _container.GetLogsAsync(ct: testContext.Current.CancellationToken);
                output.WriteLine(logs.Stdout);
                output.WriteLine("Errors:");
                output.WriteLine(logs.Stderr);
                output.WriteLine("Health:");
                (string @out, string error) =
                    await Utils.InspectContainer(_container.Id, testContext.Current.CancellationToken);
                if (string.IsNullOrWhiteSpace(@out) is false)
                {
                    output.WriteLine(JsonSerializer.Serialize(JsonSerializer.Deserialize<JsonElement>(@out),
                        new JsonSerializerOptions { WriteIndented = true }));
                }

                output.WriteLine(error);
            }

            throw;
        }
    }

    private async Task Init(DockerImage image, CancellationToken cancellationToken)
    {
        string baseImageType = image.Tag.Contains("alpine", StringComparison.OrdinalIgnoreCase)
            ? "alpine"
            : "ubuntu-chiseled";

        _image = new ImageFromDockerfileBuilder()
            .WithBuildArgument("RUNTIME_TAG", image.Tag)
            .WithBuildArgument("IMAGE", image.Image)
            .WithBuildArgument("BASE_IMAGE_TYPE", baseImageType)
            .WithBuildArgument("HEALTHCHECK_IMAGE", Utils.HealthCheckImage())
            .WithDockerfile(Path.GetFileName(SampleDockerfile))
            .WithContextDirectory(CommonDirectoryPath.GetSolutionDirectory().DirectoryPath)
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(),
                Path.GetDirectoryName(SampleDockerfile))
            .Build();
        await _image.CreateAsync(cancellationToken).ConfigureAwait(false);

        _container = new ContainerBuilder()
            .WithImage(_image)
            .WithWaitStrategy(Wait.ForUnixContainer().UntilMessageIsLogged(
                Regex.Escape("Application started. Press Ctrl+C to shut down."),
                strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30))))
            .WithEnvironment("DISTROLESS_HEALTHCHECKS_Logging__LogLevel__Default", "None")
            .WithEnvironment("DISTROLESS_HEALTHCHECKS_Uris__0", UnhealthyUri)
            .Build();
    }
}
