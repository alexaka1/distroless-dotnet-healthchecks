using System.Text.Json;
using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;

namespace Distroless.HealthChecks.Test.ParameterTests;

public sealed class UrlsTest(ITestOutputHelper output, ITestContextAccessor testContext) : IAsyncLifetime
{
    private IContainer _container = null!;
    private IFutureDockerImage _image = null!;

    public static TheoryData<string, string, string, string, string[], HealthStatus> Data
    {
        get
        {
            string[] images =
            [
                "mcr.microsoft.com/dotnet/runtime-deps",
                "mcr.microsoft.com/dotnet/nightly/runtime-deps",
            ];
            string[] tags =
            [
                "9.0",
                "8.0",
                "9.0-noble",
                "9.0-noble-chiseled",
                "9.0-azurelinux3.0-distroless",
                "9.0-noble-chiseled-aot",
                "8.0-noble-chiseled-aot",
                "9.0-azurelinux3.0-distroless-aot",
            ];
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
            foreach (string image in images)
            {
                foreach (var url in urls)
                {
                    foreach (string tag in tags)
                    {
                        if (tag.Contains("aot") && !image.Contains("nightly"))
                        {
                            continue;
                        }

                        data.Add(image,
                            tag,
                            tag[..3],
                            Dockerfile,
                            url.urls,
                            url.expected
                        );
                    }
                }
            }

            return data;
        }
    }

    private const string Dockerfile = "test/Distroless.Sample.WebApp/aot.Dockerfile";

    public async ValueTask DisposeAsync()
    {
        await _image.DisposeAsync();
        await _container.DisposeAsync();
    }

    public ValueTask InitializeAsync()
    {
        return ValueTask.CompletedTask;
    }

    [Theory]
    [MemberData(nameof(Data))]
    public async Task Container_returns_expected_health_status(string image, string runtimeTag, string targetFramework,
        string dockerfile,
        string[] urls, HealthStatus expected)
    {
        try
        {
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
            throw;
        }
    }

    private async Task Init(TestData data, CancellationToken cancellationToken = default)
    {
        _image = new ImageFromDockerfileBuilder()
            .WithDockerfile(data.Dockerfile)
            .WithBuildArgument("RUNTIME_TAG", data.RuntimeTag)
            .WithBuildArgument("TARGET_FRAMEWORK", data.TargetFramework)
            .WithBuildArgument("IMAGE", data.Image)
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(), "")
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

    private record TestData(
        string Image,
        string RuntimeTag,
        string TargetFramework,
        string Dockerfile,
        string[] Urls);
}
