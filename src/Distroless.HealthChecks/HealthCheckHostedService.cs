using System.Net;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Options;

namespace Distroless.HealthChecks;

public class HealthCheckHostedService(
    IHost host,
    IOptions<HealthCheckOptions> options,
    StatusResult statusResult)
    : BackgroundService
{
    private static readonly HttpClient HttpClient = new();

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        foreach (var uri in options.Value.Uris)
        {
            try
            {
                using var result = await HttpClient.GetAsync(uri, stoppingToken);
                if (!result.IsSuccessStatusCode)
                {
                    Console.Error.WriteLine(
                        $"Health check failed for {uri}: {(int)result.StatusCode} {result.StatusCode}");
                    statusResult.HealthStatus = HealthStatus.Unhealthy;
                    break;
                }
            }
            catch (Exception e)
            {
                Console.Error.WriteLine($"Health check failed for {uri}: {e.Message}");
                statusResult.HealthStatus = HealthStatus.Unhealthy;
                break;
            }
        }

        await host.StopAsync(stoppingToken);
    }
}
