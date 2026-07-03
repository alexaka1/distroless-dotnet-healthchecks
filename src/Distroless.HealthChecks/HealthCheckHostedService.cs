using System.Diagnostics;
using System.Text.Json;
using Distroless.HealthChecks.Checks;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;

namespace Distroless.HealthChecks;

public class HealthCheckHostedService(
    IHost host,
    SimpleHealthCheck simpleHealthCheck,
    IConfiguration configuration,
    StatusResult statusResult)
    : BackgroundService
{
    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        var totalStopwatch = Stopwatch.StartNew();
        var result = await simpleHealthCheck.CheckAsync(stoppingToken);
        totalStopwatch.Stop();

        if (result.Status is not HealthStatus.Healthy)
        {
            if (statusResult.HealthStatus > result.Status)
            {
                statusResult.HealthStatus = result.Status;
            }

            ConsoleLog.HealthCheckEnd(
                configuration,
                SimpleHealthCheck.Name,
                result.Status,
                result.Duration,
                result.Description,
                result.Exception);

            var report = HealthFailureReportFactory.CreateFrom(result, totalStopwatch.Elapsed);
            ConsoleLog.HealthCheckFailed(
                configuration,
                JsonSerializer.Serialize(report, HealthCheckSerializerContext.Default.HealthFailureReport));
        }

        await host.StopAsync(stoppingToken);
    }
}
