using System.Text.Json;
using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;
using Xunit.Abstractions;

namespace Distroless.HealthChecks.Test.HealthyTests;

public abstract class HealthyContainerTest<TData>(ITestOutputHelper output) : IAsyncLifetime where TData : ITestData
{
    private IContainer _container = null!;
    private IFutureDockerImage _image = null!;
    public static TheoryData<string, string, string, string> Data => TData.GetTheoryData();

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
    public async Task Container_is_healthy(string image, string runtimeTag, string targetFramework, string dockerfile)
    {
        try
        {
            await Init(new TestData(image, runtimeTag, targetFramework, dockerfile));
            await _container.StartAsync();
            Assert.True(_container.Health.HasFlag(TestcontainersHealthStatus.Healthy),
                $"Container was {_container.Health:G}");
        }
        catch (Exception e)
        {
            output.WriteLine(e.ToString());
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
        _image = new ImageFromDockerfileBuilder()
            .WithDockerfile(data.Dockerfile)
            .WithBuildArgument("RUNTIME_TAG", data.RuntimeTag)
            .WithBuildArgument("TARGET_FRAMEWORK", data.TargetFramework)
            .WithBuildArgument("IMAGE", data.Image)
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(), "")
            .Build();
        await _image.CreateAsync()
            .ConfigureAwait(false);
        _container = new ContainerBuilder()
            .WithImage(_image)
            .WithWaitStrategy(Wait.ForUnixContainer().UntilMessageIsLogged(
                    Regex.Escape("Application started. Press Ctrl+C to shut down."),
                    strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30)))
                .UntilContainerIsHealthy(3,
                    strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30)))
            )
            .Build();
    }

    private record TestData(string Image, string RuntimeTag, string TargetFramework, string Dockerfile);
}
