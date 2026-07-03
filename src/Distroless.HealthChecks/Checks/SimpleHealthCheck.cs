using System.Diagnostics;
using System.Net;
using Distroless.HealthChecks.Configuration;

namespace Distroless.HealthChecks.Checks;

internal sealed class SimpleHealthCheck(
    HealthCheckOptions options,
    AppConfiguration configuration)
{
    public const string Name = "SimpleCheck";
    public static readonly string[] Tags = ["simple"];
    private const string Category = "Distroless.HealthChecks.Checks.SimpleHealthCheck";

    private static readonly HttpClient s_httpClient = new()
    {
        Timeout = TimeSpan.FromSeconds(30),
    };

    public async Task<SimpleHealthCheckResult> CheckAsync(CancellationToken cancellationToken = default)
    {
        var uris = options.Uris;
        var stopwatch = Stopwatch.StartNew();

        foreach (var uri in uris)
        {
            try
            {
                using var requestTimeout = CancellationTokenSource.CreateLinkedTokenSource(cancellationToken);
                requestTimeout.CancelAfter(s_httpClient.Timeout);
                using var result = await s_httpClient.GetAsync(uri, requestTimeout.Token);
                ConsoleLog.HealthCheckResult(configuration, Category, uri, result.StatusCode);
                if (!result.IsSuccessStatusCode)
                {
                    return new SimpleHealthCheckResult(
                        HealthStatus.Unhealthy,
                        description: $"HTTP {result.StatusCode:D} {result.StatusCode:G}",
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
                var failure = new SimpleHealthCheckResult(
                    HealthStatus.Unhealthy,
                    description: null,
                    exception: e,
                    data: new Dictionary<string, object> { ["Uri"] = uri },
                    stopwatch.Elapsed);
                ConsoleLog.HealthCheckException(configuration, Category, uri, e);
                return failure;
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
