using System.Diagnostics;
using System.Net;
using System.Text.Json;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Options;

namespace Distroless.HealthChecks;

public class HealthCheckHostedService(
    IHost host,
    IOptions<HealthCheckOptions> options,
    StatusResult statusResult)
    : BackgroundService
{
    private const string CheckName = "SimpleCheck";
    private static readonly HttpClient HttpClient = new();
    private static readonly string[] CheckTags = ["simple"];

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        var stopwatch = Stopwatch.StartNew();
        foreach (var uri in options.Value.Uris)
        {
            var entryStopwatch = Stopwatch.StartNew();
            try
            {
                using var result = await HttpClient.GetAsync(uri, stoppingToken);
                entryStopwatch.Stop();
                if (!result.IsSuccessStatusCode)
                {
                    LogFailureReport(CreateStatusCodeReport(uri, result.StatusCode, entryStopwatch.Elapsed, stopwatch.Elapsed));
                    statusResult.HealthStatus = HealthStatus.Unhealthy;
                    break;
                }
            }
            catch (Exception e)
            {
                entryStopwatch.Stop();
                LogFailureReport(CreateExceptionReport(uri, e, entryStopwatch.Elapsed, stopwatch.Elapsed));
                statusResult.HealthStatus = HealthStatus.Unhealthy;
                break;
            }
        }

        await host.StopAsync(stoppingToken);
    }

    private static HealthFailureReport CreateStatusCodeReport(
        Uri uri,
        HttpStatusCode statusCode,
        TimeSpan entryDuration,
        TimeSpan totalDuration)
    {
        return new HealthFailureReport
        {
            Status = HealthFailureStatus.Unhealthy,
            TotalDuration = totalDuration,
            Entries = new Dictionary<string, HealthFailureReportEntry>
            {
                [CheckName] = new()
                {
                    Status = HealthFailureStatus.Unhealthy,
                    Duration = entryDuration,
                    Tags = CheckTags,
                    Data = new Dictionary<string, string>
                    {
                        ["Uri"] = uri.ToString(),
                        ["StatusCode"] = statusCode.ToString("G"),
                    },
                },
            },
        };
    }

    private static HealthFailureReport CreateExceptionReport(
        Uri uri,
        Exception exception,
        TimeSpan entryDuration,
        TimeSpan totalDuration)
    {
        return new HealthFailureReport
        {
            Status = HealthFailureStatus.Unhealthy,
            TotalDuration = totalDuration,
            Entries = new Dictionary<string, HealthFailureReportEntry>
            {
                [CheckName] = new()
                {
                    Status = HealthFailureStatus.Unhealthy,
                    Duration = entryDuration,
                    Exception = exception.Message,
                    Description = exception.Message,
                    Tags = CheckTags,
                    Data = new Dictionary<string, string> { ["Uri"] = uri.ToString() },
                },
            },
        };
    }

    private static void LogFailureReport(HealthFailureReport report)
    {
        Console.Error.WriteLine(
            JsonSerializer.Serialize(report, HealthCheckSerializerContext.Default.HealthFailureReport));
    }
}
