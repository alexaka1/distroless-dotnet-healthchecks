using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Text.Json;
using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;
using JetBrains.Annotations;

namespace Distroless.HealthChecks.Test.ParameterTests;

public sealed partial class NoneLogLevelUrlsTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : IAsyncLifetime
{
    private IContainer? _container;
    private IFutureDockerImage? _image;

    private const string Dockerfile = "test/Distroless.Sample.WebApp/Dockerfile";
    private const string Tags = "test/Distroless.Sample.WebApp/urlsTest.bases.Dockerfile";
    private const string UnhealthyUri = "http://localhost:8080/healthz/1";

    public static TheoryData<string, string, string, string> Data
    {
        get
        {
            var images = Utils.GetImageTagsFromDockerfile(
                Path.Combine(CommonDirectoryPath.GetSolutionDirectory().DirectoryPath, Tags));
            var data = new TheoryData<string, string, string, string>();
            string baseImageType = Utils.CurrentBaseImageType();
            var image = Utils.FilterByBaseImageType(images, baseImageType).FirstOrDefault();
            if (image is null)
            {
                return data;
            }

            data.Add(image.Image, image.Tag, Dockerfile, "Logging:LogLevel:Default");
            data.Add(image.Image, image.Tag, Dockerfile, "Logging:LogLevel:Distroless.HealthChecks.Checks.SimpleHealthCheck");
            return data;
        }
    }

    public async ValueTask DisposeAsync()
    {
        Debug.Assert(_container is not null);
        Debug.Assert(_image is not null);
        await _image.DisposeAsync();
        await _container.DisposeAsync();
    }

    public ValueTask InitializeAsync() => ValueTask.CompletedTask;

    [Theory]
    [MemberData(nameof(Data))]
    [UsedImplicitly]
    public async Task Container_stays_unhealthy_when_logging_is_none(
        string image,
        string runtimeTag,
        string dockerfile,
        string logLevelKey)
    {
        try
        {
            await Init(new TestData(image, runtimeTag, dockerfile, logLevelKey),
                testContext.Current.CancellationToken);
            await _container.StartAsync(testContext.Current.CancellationToken);
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

    [MemberNotNull(nameof(_container))]
    [MemberNotNull(nameof(_image))]
    private async Task Init(TestData data, CancellationToken cancellationToken = default)
    {
        string baseImageType = data.RuntimeTag.Contains("alpine", StringComparison.OrdinalIgnoreCase)
            ? "alpine"
            : "ubuntu-chiseled";

        _image = new ImageFromDockerfileBuilder()
            .WithBuildArgument("RUNTIME_TAG", data.RuntimeTag)
            .WithBuildArgument("IMAGE", data.Image)
            .WithBuildArgument("BASE_IMAGE_TYPE", baseImageType)
            .WithBuildArgument("HEALTHCHECK_IMAGE", Utils.HealthCheckImage())
            .WithDockerfile(Path.GetFileName(data.Dockerfile))
            .WithContextDirectory(CommonDirectoryPath.GetSolutionDirectory().DirectoryPath)
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(), Path.GetDirectoryName(data.Dockerfile))
            .Build();
        await _image.CreateAsync(cancellationToken).ConfigureAwait(false);

        _container = new ContainerBuilder()
            .WithImage(_image)
            .WithWaitStrategy(Wait.ForUnixContainer().UntilMessageIsLogged(
                    Regex.Escape("Application started. Press Ctrl+C to shut down."),
                    strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30)))
            )
            .WithEnvironment(ToEnvironmentKey(data.LogLevelKey), "None")
            .WithEnvironment("DISTROLESS_HEALTHCHECKS_Uris__0", UnhealthyUri)
            .Build();
    }

    private static string ToEnvironmentKey(string configurationKey) =>
        "DISTROLESS_HEALTHCHECKS_" + configurationKey.Replace(":", "__");

    private sealed record TestData(string Image, string RuntimeTag, string Dockerfile, string LogLevelKey);
}
