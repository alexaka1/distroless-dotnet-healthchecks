using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;
using Xunit.Abstractions;

namespace Distroless.HealthChecks.Test;

public class ContainerHealthTest(ITestOutputHelper output) : IAsyncLifetime
{
    private IFutureDockerImage _image = null!;
    private IFutureDockerImage _healthcheckImage = null!;
    private IContainer _container = null!;

    [Fact]
    public async Task Container_is_healthy()
    {
        await _container.StartAsync();
        Assert.True(_container.Health.HasFlag(TestcontainersHealthStatus.Healthy),
            $"Container was {_container.Health:G}");
    }

    public async Task InitializeAsync()
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
            .WithCleanUp(true)
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
                .UntilContainerIsHealthy(0,
                    strategy => strategy.WithTimeout(TimeSpan.FromSeconds(3)))
            )
            .Build();
    }

    public async Task DisposeAsync()
    {
        await _image.DisposeAsync();
        await _healthcheckImage.DisposeAsync();
        await _container.DisposeAsync();
    }
}
