using System.Diagnostics.CodeAnalysis;
using System.Text.Json;
using System.Text.RegularExpressions;
using DotNet.Testcontainers.Builders;
using DotNet.Testcontainers.Containers;
using DotNet.Testcontainers.Images;
using JetBrains.Annotations;

namespace Distroless.HealthChecks.Test.HealthyTests;

[UsedImplicitly(ImplicitUseTargetFlags.WithInheritors)]
public abstract class HealthyContainerTest<TData>(ITestOutputHelper output, ITestContextAccessor testContext)
    : IAsyncLifetime where TData : ITestData
{
    private IContainer? _container;
    private IFutureDockerImage? _image;
    public static TheoryData<string, string, string, string> Data => TData.GetTheoryData();

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

    public ValueTask InitializeAsync()
    {
        return ValueTask.CompletedTask;
    }

    [Theory]
    [MemberData(nameof(Data))]
    [UsedImplicitly]
    public async Task Container_is_healthy(string image, string runtimeTag, string targetFramework, string dockerfile)
    {
        try
        {
            await Init(new TestData(image, runtimeTag, targetFramework, dockerfile),
                testContext.Current.CancellationToken);
            if (_container is null)
            {
                throw new InvalidOperationException("Container was not initialized");
            }

            await _container.StartAsync(testContext.Current.CancellationToken);
            Assert.True(_container.Health.HasFlag(TestcontainersHealthStatus.Healthy),
                $"Container was {_container.Health:G}");
        }
        catch (Exception e)
        {
            output.WriteLine(e.ToString());
            if (_container is null)
            {
                throw;
            }

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

    [MemberNotNull(nameof(_container))]
    [MemberNotNull(nameof(_image))]
    private async Task Init(TestData data, CancellationToken cancellationToken = default)
    {
        string baseImageType = Utils.CurrentBaseImageType();
        string healthCheckImage = Utils.HealthCheckImage();
        _image = new ImageFromDockerfileBuilder()
            .WithBuildArgument("RUNTIME_TAG", data.RuntimeTag)
            .WithBuildArgument("TARGET_FRAMEWORK", data.TargetFramework)
            .WithBuildArgument("IMAGE", data.Image)
            .WithBuildArgument("BASE_IMAGE_TYPE", baseImageType)
            .WithBuildArgument("HEALTHCHECK_IMAGE", healthCheckImage)
            .WithDockerfile(Path.GetFileName(data.Dockerfile))
            .WithContextDirectory(CommonDirectoryPath.GetSolutionDirectory().DirectoryPath)
            .WithDockerfileDirectory(CommonDirectoryPath.GetSolutionDirectory(), Path.GetDirectoryName(data.Dockerfile))
            .Build();
        await _image.CreateAsync(cancellationToken)
            .ConfigureAwait(false);
        _container = new ContainerBuilder()
            .WithImage(_image)
            .WithWaitStrategy(Wait.ForUnixContainer().UntilMessageIsLogged(
                    Regex.Escape("Application started. Press Ctrl+C to shut down."),
                    strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30)))
                .UntilContainerIsHealthy(3,
                    strategy => strategy.WithTimeout(TimeSpan.FromSeconds(30)))
            )
            .WithEnvironment("DISTROLESS_HEALTHCHECKS_Uri", "http://localhost:8080/healthz")
            .Build();
    }

    private record TestData(string Image, string RuntimeTag, string TargetFramework, string Dockerfile);
}
