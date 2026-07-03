using Distroless.HealthChecks;
using Distroless.HealthChecks.Checks;
using Distroless.HealthChecks.Features;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

namespace Distroless.HealthChecks.Test;

public class NoneLogLevelTests
{
    [Theory]
    [InlineData("None", "Logging:LogLevel:Default")]
    [InlineData("None", "Logging:LogLevel:Distroless.HealthChecks.Checks.SimpleHealthCheck")]
    public async Task Probe_failure_stays_unhealthy_when_logging_is_none(string logLevel, string logLevelKey)
    {
        var config = new ConfigurationBuilder()
            .AddInMemoryCollection(new Dictionary<string, string?>
            {
                [logLevelKey] = logLevel,
                ["Uris:0"] = "http://127.0.0.1:1/",
            })
            .Build();

        var builder = Host.CreateApplicationBuilder(new HostApplicationBuilderSettings
        {
            Configuration = new ConfigurationManager(),
        });
        builder.Configuration.AddConfiguration(config);
        builder.Logging.ClearProviders();

        builder.Services
            .AddSingleton<IValidateOptions<HealthCheckOptions>, HealthCheckOptionsValidator>()
            .AddOptions<HealthCheckOptions>()
            .Bind(builder.Configuration)
            .ValidateOnStart();
        builder.Services.AddOptions<Features.Features>()
            .Bind(builder.Configuration.GetSection(Features.Features.Key))
            .ValidateOnStart();
        builder.Services.AddSingleton<SimpleHealthCheck>();
        builder.Services.AddSingleton<IPostConfigureOptions<HealthCheckOptions>, PostConfigureHealthCheckOptions>();
        builder.Services.AddSingleton<StatusResult>();
        builder.Services.AddHostedService<HealthCheckHostedService>();

        using var host = builder.Build();
        var statusResult = host.Services.GetRequiredService<StatusResult>();

        await host.RunAsync(TestContext.Current.CancellationToken);

        Assert.Equal(HealthStatus.Unhealthy, statusResult.HealthStatus);
        Assert.Equal(StatusResult.ExitCodes.UnHealthy, StatusResult.ToExitCode(statusResult.HealthStatus));
    }
}
