using System.Text.Json;
using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;
using Xunit.Abstractions;

namespace Distroless.HealthChecks.Test.ParameterTests;

public class UrlsTest(ITestOutputHelper output) : IAsyncLifetime
{
    private IContainer _container = null!;
    private IFutureDockerImage _image = null!;

    public static TheoryData<string, string, string, string, string, HealthStatus> Data
    {
        get
        {
            string[] images =
                ["mcr.microsoft.com/dotnet/runtime-deps", "mcr.microsoft.com/dotnet/nightly/runtime-deps"];
            string[] tags =
            [
                "9.0",
                "9.0-noble",
                "9.0-noble-chiseled",
                "9.0-azurelinux3.0-distroless",
                "9.0-noble-chiseled-aot",
                "9.0-azurelinux3.0-distroless-aot",
            ];
            (string url, HealthStatus expected)[] urls =
            [
                (GetUrl(HealthStatus.Healthy), HealthStatus.Healthy),
                (string.Join(',', [GetUrl(HealthStatus.Healthy), "http://localhost:8080/healthz", GetUrl(HealthStatus.Healthy)]),
                    HealthStatus.Healthy),
                (string.Join(',', [GetUrl(HealthStatus.UnHealthy)]), HealthStatus.UnHealthy),
                (string.Join(',', [GetUrl(HealthStatus.Healthy), GetUrl(HealthStatus.Healthy), GetUrl(HealthStatus.UnHealthy)]),
                    HealthStatus.UnHealthy),
                (string.Join(',', [GetUrl(HealthStatus.Degraded)]), HealthStatus.UnHealthy),
            ];
            var data = new TheoryData<string, string, string, string, string, HealthStatus>();
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
                            "9.0",
                            "test/Distroless.Sample.WebApp/aot.Dockerfile",
                            url.url,
                            url.expected
                        );
                    }
                }
            }

            return data;
        }
    }

    public async Task DisposeAsync()
    {
        await _image.DisposeAsync();
        await _container.DisposeAsync();
    }

    public Task InitializeAsync()
    {
        return Task.CompletedTask;
    }

    [Theory]
    [MemberData(nameof(Data))]
    public async Task Container_returns_expected_health_status(string image, string runtimeTag, string targetFramework, string dockerfile,
        string urls, HealthStatus expected)
    {
        try
        {
            await Init(new TestData(image, runtimeTag, targetFramework, dockerfile, urls));
            await _container.StartAsync();
            // wait for the healthcheck to run within docker
            await Task.Delay(TimeSpan.FromSeconds(5));
            // refresh container status within TestContainers
            await _container.StartAsync();

            Assert.Equal(expected, _container.Health switch
            {
                TestcontainersHealthStatus.Undefined => HealthStatus.UnHealthy,
                TestcontainersHealthStatus.None => HealthStatus.UnHealthy,
                TestcontainersHealthStatus.Starting => HealthStatus.UnHealthy,
                TestcontainersHealthStatus.Healthy => HealthStatus.Healthy,
                TestcontainersHealthStatus.Unhealthy => HealthStatus.UnHealthy,
                _ => HealthStatus.UnHealthy,
            });
        }
        catch (Exception)
        {
            var logs = await _container.GetLogsAsync();
            output.WriteLine(logs.Stdout);
            output.WriteLine("Errors:");
            output.WriteLine(logs.Stderr);
            output.WriteLine("Health:");
            (string @out, string error) = await Utils.InspectContainer(_container.Id);
            output.WriteLine(JsonSerializer.Serialize(JsonSerializer.Deserialize<JsonElement>(@out),
                new JsonSerializerOptions { WriteIndented = true }));
            output.WriteLine(error);
            throw;
        }
    }

    private async Task Init(TestData data)
    {
        using var timeoutCts = new CancellationTokenSource(TimeSpan.FromMinutes(5));
        _image = new ImageFromDockerfileBuilder()
            .WithDockerfile(data.Dockerfile)
            .WithBuildArgument("RUNTIME_TAG", data.RuntimeTag)
            .WithBuildArgument("TARGET_FRAMEWORK", data.TargetFramework)
            .WithBuildArgument("IMAGE", data.Image)
            .WithBuildArgument("URLS", data.Urls)
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(), "")
            .Build();
        await _image.CreateAsync(timeoutCts.Token)
            .ConfigureAwait(false);
        _container = new ContainerBuilder()
            .WithImage(_image)
            .WithWaitStrategy(Wait.ForUnixContainer().UntilMessageIsLogged(
                Regex.Escape("Application started. Press Ctrl+C to shut down."),
                strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30)))
            )
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
        string Urls);
}
