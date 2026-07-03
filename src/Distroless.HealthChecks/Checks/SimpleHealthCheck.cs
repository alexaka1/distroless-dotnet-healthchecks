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

    public async Task<SimpleHealthCheckResult> CheckAsync(CancellationToken cancellationToken = default)
    {
        var uris = options.Value.Uris;
        var stopwatch = Stopwatch.StartNew();

        foreach (var uri in uris)
        {
            var (statusCode, error) = await PlainHttpHealthClient.GetAsync(uri, cancellationToken);
            ConsoleLog.HealthCheckResult(configuration, Category, uri, statusCode);

            if (error is not null)
            {
                ConsoleLog.HealthCheckException(configuration, Category, uri, error);
                return new SimpleHealthCheckResult(
                    HealthStatus.Unhealthy,
                    description: null,
                    exception: error,
                    data: new Dictionary<string, object> { ["Uri"] = uri },
                    stopwatch.Elapsed);
            }

            if (!IsSuccessStatusCode(statusCode))
            {
                return new SimpleHealthCheckResult(
                    HealthStatus.Unhealthy,
                    description: null,
                    exception: null,
                    data: new Dictionary<string, object>
                    {
                        ["Uri"] = uri,
                        ["StatusCode"] = statusCode.ToString("G"),
                    },
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

    private static bool IsSuccessStatusCode(HttpStatusCode statusCode) =>
        (int)statusCode is >= 200 and <= 299;
}

public sealed class SimpleHealthCheckResult(
    HealthStatus status,
    string? description,
    Exception? exception,
    IReadOnlyDictionary<string, object> data,
    TimeSpan duration)
{
    public HealthStatus Status { get; } = status;

    public string? Description { get; } = description;

    public Exception? Exception { get; } = exception;

    public IReadOnlyDictionary<string, object> Data { get; } = data;

    public TimeSpan Duration { get; } = duration;
}
