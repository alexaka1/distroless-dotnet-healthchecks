using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;
using Xunit.Abstractions;

namespace Distroless.HealthChecks.Test;

public class ContainerHealthTest(ITestOutputHelper output) : IAsyncLifetime
{
    private IFutureDockerImage _image = null!;
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
        _image = new ImageFromDockerfileBuilder()
            .WithDockerfile("test/Distroless.Sample.WebApp/Dockerfile")
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(), "")
            .Build();
        await _image.CreateAsync(timeoutCts.Token)
            .ConfigureAwait(false);
        _container = new ContainerBuilder()
            .WithImage(_image)
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

        await _container.DisposeAsync();
    }
}
