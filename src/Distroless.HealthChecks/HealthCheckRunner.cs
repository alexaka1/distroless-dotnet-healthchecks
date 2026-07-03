using System.Diagnostics;
using System.Text.Json;
using Distroless.HealthChecks.Checks;
using Distroless.HealthChecks.Configuration;

namespace Distroless.HealthChecks;

internal static class HealthCheckRunner
{
    public static async Task<HealthStatus> RunAsync(
        AppConfiguration configuration,
        SimpleHealthCheck healthCheck,
        CancellationToken cancellationToken = default)
    {
        var totalStopwatch = Stopwatch.StartNew();
        var result = await healthCheck.CheckAsync(cancellationToken);
        totalStopwatch.Stop();

        if (result.Status is not HealthStatus.Healthy)
        {
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

            return result.Status;
        }

        return HealthStatus.Healthy;
    }
}
