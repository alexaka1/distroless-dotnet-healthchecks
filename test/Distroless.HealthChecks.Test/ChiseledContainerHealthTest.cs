﻿using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;

namespace Distroless.HealthChecks.Test;

public class ChiseledContainerHealthTestNet9 : ChiseledContainerHealthTest
{
    public static TheoryData<string, string> Data =>
        new()
        {
            { "9.0-noble", "9.0" },
            { "9.0-alpine", "9.0" },
            { "9.0-noble-chiseled", "9.0" },
            { "9.0-azurelinux3.0-distroless", "9.0" },
        };

    [Theory]
    [MemberData(nameof(Data))]
    protected async Task Container_is_healthy(string runtimeTag, string targetFramework)
    {
        await ContainerIsHealthy(runtimeTag, targetFramework);
    }
}

public class ChiseledContainerHealthTestNet8 : ChiseledContainerHealthTest
{
    public static TheoryData<string, string> Data =>
        new()
        {
            { "8.0-alpine", "8.0" },
            { "8.0-noble", "8.0" },
            { "8.0-jammy", "8.0" },
            { "8.0-noble-chiseled", "8.0" },
            { "8.0-jammy-chiseled", "8.0" },
            { "8.0-azurelinux3.0-distroless", "8.0" },
        };

    [Theory]
    [MemberData(nameof(Data))]
    protected async Task Container_is_healthy(string runtimeTag, string targetFramework)
    {
        await ContainerIsHealthy(runtimeTag, targetFramework);
    }
}

public abstract class ChiseledContainerHealthTest : IAsyncLifetime
{
    private IContainer _container = null!;
    private IFutureDockerImage _image = null!;


    public async Task DisposeAsync()
    {
        await _image.DisposeAsync();
        await _container.DisposeAsync();
    }

    public Task InitializeAsync()
    {
        return Task.CompletedTask;
    }

    protected async Task ContainerIsHealthy(string runtimeTag, string targetFramework)
    {
        await Init(new TestData(runtimeTag, targetFramework));
        await _container.StartAsync();
        Assert.True(_container.Health.HasFlag(TestcontainersHealthStatus.Healthy),
            $"Container was {_container.Health:G}");
    }

    private async Task Init(TestData data)
    {
        using var timeoutCts = new CancellationTokenSource(TimeSpan.FromMinutes(5));
        _image = new ImageFromDockerfileBuilder()
            .WithDockerfile("test/Distroless.Sample.WebApp/chiseled.Dockerfile")
            .WithBuildArgument("RUNTIME_TAG", data.RuntimeTag)
            .WithBuildArgument("TARGET_FRAMEWORK", data.TargetFramework)
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
                .UntilContainerIsHealthy(3,
                    strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30)))
            )
            .Build();
    }

    private record TestData(string RuntimeTag, string TargetFramework);
}
