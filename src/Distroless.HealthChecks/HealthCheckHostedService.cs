using System.Text.Json;
using HealthChecks.UI.Core;
using Microsoft.Extensions.Diagnostics.HealthChecks;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace Distroless.HealthChecks;

public partial class HealthCheckHostedService(
    IHost host,
    ILogger<HealthCheckHostedService> logger,
    HealthCheckService healthCheckService,
    StatusResult statusResult)
    : BackgroundService
{
    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        var health = await healthCheckService.CheckHealthAsync(stoppingToken);
        if (health.Status is not HealthStatus.Healthy)
        {
            var report = UIHealthReport.CreateFrom(health);
            LogHealthCheckFailed(JsonSerializer.Serialize(report, HealthCheckSerializerContext.Default.UIHealthReport));
            // Regress from healthy to degraded to unhealthy
            if (statusResult.HealthStatus > health.Status)
            {
                statusResult.HealthStatus = health.Status;
            }
        }

        // Check completed, we can stop the service
        await host.StopAsync(stoppingToken);
    }

    [LoggerMessage(Level = LogLevel.Error, Message = "{Report}", EventName = "HealthCheckFailed")]
    private partial void LogHealthCheckFailed(string report);
}
