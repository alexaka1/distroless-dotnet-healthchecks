using System.Globalization;
using Distroless.HealthChecks.Checks;
using Microsoft.Extensions.Configuration;

namespace Distroless.HealthChecks;

internal enum ConsoleLogLevel
{
    Trace = 0,
    Debug = 1,
    Information = 2,
    Warning = 3,
    Error = 4,
    Critical = 5,
    None = 6,
}

internal static class ConsoleLog
{
    private const string DefaultHealthCheckServiceCategory =
        "Microsoft.Extensions.Diagnostics.HealthChecks.DefaultHealthCheckService";

    private const string HealthCheckHostedServiceCategory =
        "Distroless.HealthChecks.HealthCheckHostedService";

    private const int HealthCheckEndEventId = 103;
    private const int HealthCheckFailedEventId = 591182496;

    public static void HealthCheckEnd(
        IConfiguration configuration,
        string healthCheckName,
        HealthStatus status,
        TimeSpan duration,
        string? description,
        Exception? exception)
    {
        if (!IsEnabled(configuration, DefaultHealthCheckServiceCategory, ConsoleLogLevel.Error))
        {
            return;
        }

        var descriptionText = description is null ? "'(null)'" : $"'{description}'";
        var message =
            $"Health check {healthCheckName} with status {status} completed after {duration.TotalMilliseconds.ToString(CultureInfo.InvariantCulture)}ms with message {descriptionText}";

        Write(ConsoleLogLevel.Error, DefaultHealthCheckServiceCategory, HealthCheckEndEventId, message, exception);
    }

    public static void HealthCheckFailed(IConfiguration configuration, string report)
    {
        if (!IsEnabled(configuration, HealthCheckHostedServiceCategory, ConsoleLogLevel.Error))
        {
            return;
        }

        Write(ConsoleLogLevel.Error, HealthCheckHostedServiceCategory, HealthCheckFailedEventId, report);
    }

    public static void HealthCheckResult(
        IConfiguration configuration,
        string category,
        Uri uri,
        System.Net.HttpStatusCode statusCode)
    {
        if (!IsEnabled(configuration, category, ConsoleLogLevel.Debug))
        {
            return;
        }

        Write(ConsoleLogLevel.Debug, category, 0, $"Health check result for {uri}: {statusCode}");
    }

    public static void HealthCheckException(
        IConfiguration configuration,
        string category,
        Uri uri,
        Exception exception)
    {
        if (!IsEnabled(configuration, category, ConsoleLogLevel.Debug))
        {
            return;
        }

        Write(ConsoleLogLevel.Debug, category, 0, $"Health check failed for {uri}", exception);
    }

    public static void UnableToDetermineHostAddress(
        IConfiguration configuration,
        string category,
        Uri uri,
        Exception exception)
    {
        if (!IsEnabled(configuration, category, ConsoleLogLevel.Error))
        {
            return;
        }

        Write(ConsoleLogLevel.Error, category, 0, $"Unable to determine host address of {uri}", exception);
    }

    public static void UriHostAddress(
        IConfiguration configuration,
        string category,
        Uri uri,
        System.Net.IPAddress[] hostAddress)
    {
        if (!IsEnabled(configuration, category, ConsoleLogLevel.Trace))
        {
            return;
        }

        Write(ConsoleLogLevel.Trace, category, 0, $"Host address of uri {uri} is {FormatAddresses(hostAddress)}");
    }

    public static void HostAddress(
        IConfiguration configuration,
        string category,
        System.Net.IPAddress[] hostAddress)
    {
        if (!IsEnabled(configuration, category, ConsoleLogLevel.Trace))
        {
            return;
        }

        Write(ConsoleLogLevel.Trace, category, 0, $"Host address of machine is {FormatAddresses(hostAddress)}");
    }

    public static void Critical(string category, string message, Exception exception) =>
        Write(ConsoleLogLevel.Critical, category, 0, message, exception);

    internal static bool IsEnabled(IConfiguration configuration, string category, ConsoleLogLevel level)
    {
        var current = category;
        while (true)
        {
            if (TryGetConfiguredLevel(configuration, $"Logging:LogLevel:{current}", out var configured))
            {
                return IsLevelEnabled(level, configured);
            }

            var lastDot = current.LastIndexOf('.');
            if (lastDot < 0)
            {
                break;
            }

            current = current[..lastDot];
        }

        var defaultLevel = TryGetConfiguredLevel(configuration, "Logging:LogLevel:Default", out var defaultConfigured)
            ? defaultConfigured
            : ConsoleLogLevel.Error;
        return IsLevelEnabled(level, defaultLevel);
    }

    private static bool TryGetConfiguredLevel(IConfiguration configuration, string key, out ConsoleLogLevel level)
    {
        var value = configuration[key];
        if (string.IsNullOrEmpty(value))
        {
            level = default;
            return false;
        }

        return Enum.TryParse(value, ignoreCase: true, out level);
    }

    private static bool IsLevelEnabled(ConsoleLogLevel level, ConsoleLogLevel configured) =>
        configured != ConsoleLogLevel.None && level >= configured;

    private static string FormatAddresses(System.Net.IPAddress[] hostAddress) =>
        string.Join(',', hostAddress.Select(address => address.ToString()));

    private static void Write(
        ConsoleLogLevel level,
        string category,
        int eventId,
        string message,
        Exception? exception = null)
    {
        Console.Error.WriteLine($"{ToPrefix(level)}: {category}[{eventId}]");
        Console.Error.WriteLine($"      {message}");
        if (exception is not null)
        {
            Console.Error.WriteLine(exception.ToString());
        }
    }

    private static string ToPrefix(ConsoleLogLevel level) => level switch
    {
        ConsoleLogLevel.Trace => "trce",
        ConsoleLogLevel.Debug => "dbug",
        ConsoleLogLevel.Information => "info",
        ConsoleLogLevel.Warning => "warn",
        ConsoleLogLevel.Error => "fail",
        ConsoleLogLevel.Critical => "crit",
        ConsoleLogLevel.None => "none",
        _ => "none",
    };
}

internal static class HealthFailureReportFactory
{
    public static HealthFailureReport CreateFrom(SimpleHealthCheckResult result, TimeSpan totalDuration)
    {
        var entry = new HealthFailureReportEntry
        {
            Data = ToDataDictionary(result.Data),
            Description = result.Description ?? result.Exception?.Message,
            Duration = result.Duration,
            Status = result.Status,
            Tags = SimpleHealthCheck.Tags,
            Exception = result.Exception?.Message,
        };

        return new HealthFailureReport
        {
            Status = result.Status,
            TotalDuration = totalDuration,
            Entries = new Dictionary<string, HealthFailureReportEntry>
            {
                [SimpleHealthCheck.Name] = entry,
            },
        };
    }

    private static Dictionary<string, string> ToDataDictionary(IReadOnlyDictionary<string, object> data)
    {
        var converted = new Dictionary<string, string>(data.Count);
        foreach (var (key, value) in data)
        {
            converted[key] = value switch
            {
                Uri uri => uri.ToString(),
                null => string.Empty,
                _ => value.ToString() ?? string.Empty,
            };
        }

        return converted;
    }
}
