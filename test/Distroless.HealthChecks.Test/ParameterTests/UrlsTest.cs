using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Text.Json;
using System.Text.RegularExpressions;
using DotNet.Testcontainers;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;
using JetBrains.Annotations;

namespace Distroless.HealthChecks.Test.ParameterTests;

public sealed partial class UrlsTest(ITestOutputHelper output, ITestContextAccessor testContext) : IAsyncLifetime
{
    private IContainer? _container;
    private IFutureDockerImage? _image;

    public static TheoryData<string, string, string, string, string[], HealthStatus> Data
    {
        get
        {
            var images =
                Utils.GetImageTagsFromDockerfile(Path.Combine(CommonDirectoryPath.GetSolutionDirectory().DirectoryPath,
                    Tags));


            var dotnetMajorVersion = DotnetMajorVersion();
            (string[] urls, HealthStatus expected)[] urls =
            [
                ([GetUrl(HealthStatus.Healthy)], HealthStatus.Healthy),
                ([GetUrl(HealthStatus.Healthy), "http://localhost:8080/healthz", GetUrl(HealthStatus.Healthy)],
                    HealthStatus.Healthy),
                ([GetUrl(HealthStatus.UnHealthy)], HealthStatus.UnHealthy),
                ([GetUrl(HealthStatus.Healthy), GetUrl(HealthStatus.Healthy), GetUrl(HealthStatus.UnHealthy)],
                    HealthStatus.UnHealthy),
                ([GetUrl(HealthStatus.Degraded)], HealthStatus.UnHealthy),
                (["http://127.0.0.1:8080/healthz"], HealthStatus.Healthy),
                (["http://alexaka1.dev:8080/healthz"], HealthStatus.Healthy),
                (["https://status.cloud.google.com/"], HealthStatus.UnHealthy),
            ];
            var data = new TheoryData<string, string, string, string, string[], HealthStatus>();
            string baseImageType = Utils.CurrentBaseImageType();
            foreach (var image in Utils.FilterByBaseImageType(images, baseImageType))
            {
                foreach (var url in urls)
                {
                    data.Add(image.Image,
                        image.Tag,
                        $"{dotnetMajorVersion.Match(image.Tag).Groups[1].Value}.0",
                        Dockerfile,
                        url.urls,
                        url.expected
                    );
                }
            }

            return data;
        }
    }

    private const string Dockerfile = "test/Distroless.Sample.WebApp/Dockerfile";
    private const string Tags = "test/Distroless.Sample.WebApp/urlsTest.bases.Dockerfile";

    public async ValueTask DisposeAsync()
    {
        Debug.Assert(_container is not null);
        Debug.Assert(_image is not null);
        await _image.DisposeAsync();
        await _container.DisposeAsync();
    }

    public ValueTask InitializeAsync()
    {
        return ValueTask.CompletedTask;
    }

    [Theory]
    [MemberData(nameof(Data))]
    [UsedImplicitly]
    public async Task Container_returns_expected_health_status(string image, string runtimeTag, string targetFramework,
        string dockerfile,
        string[] urls, HealthStatus expected)
    {
        try
        {
            ConsoleLogger.Instance.DebugLogLevelEnabled = true;
            await Init(new TestData(image, runtimeTag, targetFramework, dockerfile, urls),
                testContext.Current.CancellationToken);
            await _container.StartAsync(testContext.Current.CancellationToken);
            // wait for the healthcheck to run within docker
            await Task.Delay(TimeSpan.FromSeconds(5), testContext.Current.CancellationToken);
            // refresh container status within TestContainers
            await _container.StartAsync(testContext.Current.CancellationToken);

            Assert.Equal(expected, _container.Health switch
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
        // Select SDK base matching the runtime OS (musl vs glibc)
        string baseImageType = data.RuntimeTag.Contains("alpine", StringComparison.OrdinalIgnoreCase) ?
            "alpine" :
            "ubuntu-chiseled";

        _image = new ImageFromDockerfileBuilder()
            .WithBuildArgument("RUNTIME_TAG", data.RuntimeTag)
            .WithBuildArgument("TARGET_FRAMEWORK", data.TargetFramework)
            .WithBuildArgument("IMAGE", data.Image)
            .WithBuildArgument("BASE_IMAGE_TYPE", baseImageType)
            .WithBuildArgument("HEALTHCHECK_IMAGE", Utils.HealthCheckImage())
            .WithDockerfile(Path.GetFileName(data.Dockerfile))
            .WithContextDirectory(CommonDirectoryPath.GetSolutionDirectory().DirectoryPath)
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(), Path.GetDirectoryName(data.Dockerfile))
            .Build();
        await _image.CreateAsync(cancellationToken)
            .ConfigureAwait(false);
        var containerBuilder = new ContainerBuilder()
            .WithImage(_image)
            .WithWaitStrategy(Wait.ForUnixContainer().UntilMessageIsLogged(
                Regex.Escape("Application started. Press Ctrl+C to shut down."),
                strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30)))
            )
            .WithExtraHost("alexaka1.dev", "127.0.0.1")
            .WithEnvironment("DISTROLESS_HEALTHCHECKS_Logging__LogLevel__Distroless.HealthChecks", "Trace");
        foreach ((int index, string url) in data.Urls.Index())
        {
            containerBuilder = containerBuilder.WithEnvironment($"DISTROLESS_HEALTHCHECKS_Uris__{index}", url);
        }

        _container = containerBuilder
            .Build();
    }

    private static string GetUrl(HealthStatus desired)
    {
        return desired switch
        {
            HealthStatus.Healthy => "http://localhost:8080/healthz",
            HealthStatus.UnHealthy => "http://localhost:8080/healthz/1",
            HealthStatus.Degraded => "http://localhost:8080/healthz/2",
            _ => throw new ArgumentOutOfRangeException(nameof(desired), desired, null),
        };
    }

    /// <summary>
    ///     Gets the major version of dotnet from a docker image tag. For example, `10.0.0-preview.1-alpine3.21` would return
    ///     `10`.
    /// </summary>
    /// <returns></returns>
    [GeneratedRegex(@"^(\d+)\.\d+")]
    private static partial Regex DotnetMajorVersion();

    private sealed record TestData(
        string Image,
        string RuntimeTag,
        string TargetFramework,
        // ReSharper disable once MemberHidesStaticFromOuterClass
        string Dockerfile,
        string[] Urls);
}
