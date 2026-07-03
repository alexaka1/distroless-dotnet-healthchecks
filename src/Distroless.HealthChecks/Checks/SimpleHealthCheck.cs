using System.Diagnostics;
using System.Net;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Options;

namespace Distroless.HealthChecks.Checks;

public class SimpleHealthCheck(
    IOptions<HealthCheckOptions> options,
    IConfiguration configuration)
{
    public const string Name = "SimpleCheck";
    public static readonly string[] Tags = ["simple"];
    private const string Category = "Distroless.HealthChecks.Checks.SimpleHealthCheck";

    private static readonly HttpClient HttpClient = new()
    {
        Timeout = TimeSpan.FromSeconds(30),
    };

    public async Task<SimpleHealthCheckResult> CheckAsync(CancellationToken cancellationToken = default)
    {
        var uris = options.Value.Uris;
        var stopwatch = Stopwatch.StartNew();

        foreach (var uri in uris)
        {
            try
            {
                using var requestTimeout = CancellationTokenSource.CreateLinkedTokenSource(cancellationToken);
                requestTimeout.CancelAfter(HttpClient.Timeout);
                using var result = await HttpClient.GetAsync(uri, requestTimeout.Token);
                ConsoleLog.HealthCheckResult(configuration, Category, uri, result.StatusCode);
                if (!result.IsSuccessStatusCode)
                {
                    return new SimpleHealthCheckResult(
                        HealthStatus.Unhealthy,
                        description: null,
                        exception: null,
                        data: new Dictionary<string, object>
                        {
                            ["Uri"] = uri,
                            ["StatusCode"] = result.StatusCode.ToString("G"),
                        },
                        stopwatch.Elapsed);
                }
            }
            catch (Exception e)
            {
                ConsoleLog.HealthCheckException(configuration, Category, uri, e);
                return new SimpleHealthCheckResult(
                    HealthStatus.Unhealthy,
                    description: null,
                    exception: e,
                    data: new Dictionary<string, object> { ["Uri"] = uri },
                    stopwatch.Elapsed);
            }
        }

        return new SimpleHealthCheckResult(
            HealthStatus.Healthy,
            description: null,
            exception: null,
            data: new Dictionary<string, object>(),
            stopwatch.Elapsed);
    }
}
