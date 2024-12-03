using System.Net;
using System.Text.Json.Serialization;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

namespace Distroless.HealthChecks;

public class HealthCheckOptions
{
    public string? Urls { get; set; }

    [JsonIgnore]
    public List<Uri> Uris { get; set; } = [];

    public const string Key = "HealthCheck";
}
//
// [OptionsValidator]
// public partial class HealthCheckOptionsValidator : IValidateOptions<HealthCheckOptions>;

public partial class PostConfigureHealthCheckOptions(
    ILogger<PostConfigureHealthCheckOptions> logger,
    IOptions<Features.Features> features
)
    : IPostConfigureOptions<HealthCheckOptions>
{
    private readonly Lazy<IPAddress[]> _localAddresses = new(() =>
        [..Dns.GetHostAddresses(Dns.GetHostName()), IPAddress.Loopback, IPAddress.IPv6Loopback]);

    public void PostConfigure(string? name, HealthCheckOptions options)
    {
        var f = features.Value;
        LogUrls(options.Urls);
        if (string.IsNullOrWhiteSpace(options.Urls))
        {
            // The complex configuration was probably used.
            return;
        }

        if (options.Uris.Count != 0)
        {
            if (!f.AllowUnsafeExternalUris)
            {
                foreach (var uri in options.Uris.Where(uri => !IsLoopback(uri)))
                {
                    throw new NotSupportedException(
                        $"Health checks are only supported on loopback addresses. {uri} is not a loopback address.")
                    {
                        Data =
                        {
                            { "Uri", uri },
                        },
                    };
                }
            }

            // Someone has already configured the Uris.
            // They know what they are doing.
            return;
        }

        string[] uris = options.Urls.Split(',', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries);
        foreach (string uri in uris)
        {
            if (Uri.TryCreate(uri, UriKind.Absolute, out var uriResult))
            {
                if (!f.AllowUnsafeExternalUris && !IsLoopback(uriResult))
                {
                    throw new NotSupportedException(
                        $"Health checks are only supported on loopback addresses. {uri} is not a loopback address.")
                    {
                        Data =
                        {
                            { "Uri", uri },
                        },
                    };
                }

                options.Uris.Add(uriResult);
            }
            else
            {
                LogInvalidUri(uri);
            }
        }
    }

    private bool IsLoopback(Uri uri)
    {
        try
        {
            if (uri.IsLoopback)
            {
                return true;
            }

            // Get the IP addresses of the given hostname
            var hostAddresses = Dns.GetHostAddresses(uri.Host);
            LogHostAddress(uri, hostAddresses);

            // Get the IP addresses of the local machine
            var localAddresses = _localAddresses.Value;
            LogHostAddress(localAddresses);

            // Check if any of the host's addresses match any of the local addresses
            return hostAddresses.Any(hostAddr => localAddresses.Any(hostAddr.Equals));
        }
        catch (Exception e)
        {
            LogUnableToDetermineHostAddress(e, uri);
        }

        return false;
    }

    [LoggerMessage(Level = LogLevel.Warning, Message = "Invalid uri '{Uri}'", EventName = "InvalidUri")]
    private partial void LogInvalidUri(string uri);

    [LoggerMessage(Level = LogLevel.Debug, Message = "Urls: {Urls}", EventName = "Urls")]
    private partial void LogUrls(string? urls);

    [LoggerMessage(Level = LogLevel.Error, Message = "Unable to determine host address of {Uri}",
        EventName = "UnableToDetermineHostAddress")]
    private partial void LogUnableToDetermineHostAddress(Exception ex, Uri uri);

    [LoggerMessage(Level = LogLevel.Trace, Message = "Host address of uri {Uri} is {HostAddress}",
        EventName = "UriHostAddress")]
    private partial void LogHostAddress(Uri uri, IPAddress[] hostAddress);

    [LoggerMessage(Level = LogLevel.Trace, Message = "Host address of machine is {HostAddress}",
        EventName = "HostAddress")]
    private partial void LogHostAddress(IPAddress[] hostAddress);
}
