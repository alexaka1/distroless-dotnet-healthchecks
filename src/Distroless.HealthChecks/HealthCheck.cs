using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace Distroless.HealthChecks;

public class HealthCheck(IHost host, ILogger<HealthCheck> logger) : BackgroundService
{
    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        await Task.Delay(TimeSpan.FromSeconds(2), stoppingToken);
        logger.LogInformation("Health check is running");
        await host.StopAsync(stoppingToken);
    }
}
