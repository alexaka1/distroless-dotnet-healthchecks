using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;

namespace Distroless.HealthChecks.Test;

public class ContainerHealthTest : IAsyncLifetime
{
    private IContainer _container = null!;
    private IFutureDockerImage _healthcheckImage = null!;
    private IFutureDockerImage _image = null!;

    public static TheoryData<string> Data =>
    [
        "9.0",
        "8.0",
    ];

    public async Task DisposeAsync()
    {
        await _image.DisposeAsync();
        await _healthcheckImage.DisposeAsync();
        await _container.DisposeAsync();
    }

    public Task InitializeAsync()
    {
        return Task.CompletedTask;
    }

    [Theory]
    [MemberData(nameof(Data))]
    public async Task Container_is_healthy(string runtimeTag)
    {
        await Init(new TestData(runtimeTag));
        await _container.StartAsync();
        Assert.True(_container.Health.HasFlag(TestcontainersHealthStatus.Healthy),
            $"Container was {_container.Health:G}");
    }

    private async Task Init(TestData data)
    {
        using var timeoutCts = new CancellationTokenSource(TimeSpan.FromMinutes(5));
        _healthcheckImage = new ImageFromDockerfileBuilder()
            .WithCleanUp(true)
            .WithDeleteIfExists(true)
            // .WithCreateParameterModifier(parameters => parameters.Platform = "linux/amd64")
            .WithDockerfile("src/Distroless.HealthChecks/Dockerfile")
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(), "")
            .WithBuildArgument("TARGETARCH", "amd64")
            .Build();
        // Docker.DotNet and by extension TestContainers do not support Buildx, so the healthcheck image cannot be built in tests
        // https://github.com/dotnet/Docker.DotNet/issues/635
        // await healthcheckImage.CreateAsync(timeoutCts.Token)
        //     .ConfigureAwait(false);
        _image = new ImageFromDockerfileBuilder()
            .WithDockerfile("test/Distroless.Sample.WebApp/Dockerfile")
            .WithBuildArgument("RUNTIME_TAG", data.RuntimeTag)
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(), "")
            .Build();
        await _image.CreateAsync(timeoutCts.Token)
            .ConfigureAwait(false);
        _container = new ContainerBuilder()
            .WithImage(_image)
            .WithCleanUp(true)
            .WithWaitStrategy(Wait.ForUnixContainer().UntilMessageIsLogged(
                    Regex.Escape("Application started. Press Ctrl+C to shut down."),
                    strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30)))
                .UntilContainerIsHealthy(1,
                    strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30)))
            )
            .Build();
    }
}

public record TestData(string RuntimeTag);
