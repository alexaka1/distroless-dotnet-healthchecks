using System.Net;
using Microsoft.Extensions.Diagnostics.HealthChecks;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

namespace Distroless.HealthChecks.Checks;

public partial class SimpleHealthCheck(
    IOptions<HealthCheckOptions> options,
    IHttpClientFactory clientFactory,
    ILogger<SimpleHealthCheck> logger
    ) : IHealthCheck
{
    public const string Name = "SimpleCheck";

    public async Task<HealthCheckResult> CheckHealthAsync(HealthCheckContext context,
        CancellationToken cancellationToken = default)
    {
        var uris = options.Value.Uris;
        var client = clientFactory.CreateClient(Name);
        if (context.Registration.Delay.HasValue)
        {
            client.Timeout = context.Registration.Delay.Value;
        }

        foreach (var uri in uris)
        {
            try
            {
                using var result = await client.GetAsync(uri, cancellationToken);
                LogHealthCheckResult(uri, result.StatusCode);
                if (!result.IsSuccessStatusCode)
                {
                    return HealthCheckResult.Unhealthy(data: new Dictionary<string, object>
                        { { "Uri", uri }, { "StatusCode", result.StatusCode.ToString("G") } });
                }
            }
            catch (Exception e)
            {
                LogHealthCheckFailed(uri, e);
                return HealthCheckResult.Unhealthy(null, e, new Dictionary<string, object> { { "Uri", uri } });
            }
        }

        return HealthCheckResult.Healthy();
    }

    [LoggerMessage(Level = LogLevel.Debug, Message = "Health check failed for {Uri}",
        EventName = "HealthCheckFailed")]
    private partial void LogHealthCheckFailed(Uri uri, Exception ex);

    [LoggerMessage(Level = LogLevel.Debug, Message = "Health check result for {Uri}: {StatusCode}",
        EventName = "HealthCheckResult")]
    private partial void LogHealthCheckResult(Uri uri, HttpStatusCode statusCode);
}
