using System.Net;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

namespace Distroless.HealthChecks;

public class HealthCheckOptions
{
    public Uri? Uri { get; set; }

    public List<Uri> Uris { get; set; } = [];

    public const string Key = "HealthCheck";
}

public partial class HealthCheckOptionsValidator(
    ILogger<HealthCheckOptionsValidator> logger,
    IOptions<Features.Features> features)
    : IValidateOptions<HealthCheckOptions>
{
    private readonly Lazy<IPAddress[]> _localAddresses = new(() =>
        [..Dns.GetHostAddresses(Dns.GetHostName()), IPAddress.Loopback, IPAddress.IPv6Loopback]);

    public ValidateOptionsResult Validate(string? name, HealthCheckOptions options)
    {
        var f = features.Value;
        var builder = new ValidateOptionsResultBuilder();

        if ((options.Uri is not null && options.Uris.Count > 1) ||
            (options.Uri is not null && options.Uris.Count is 1 && options.Uris[0] != options.Uri))
        {
            builder.AddError("Uri and Uris cannot be used together. Please use only one of them.", nameof(options.Uri));
        }

        if (f.AllowUnsafeExternalUris is false)
        {
            var uris = options.Uris.AsEnumerable();
            if (options.Uri is not null)
            {
                uris = uris.Append(options.Uri);
            }

            foreach (var uri in uris)
            {
                if (!IsLoopback(uri))
                {
                    builder.AddError($"$Uri {uri} must be a loopback address", nameof(options.Uris));
                }
            }
        }


        return builder.Build();
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

public class PostConfigureHealthCheckOptions
    : IPostConfigureOptions<HealthCheckOptions>
{
    public void PostConfigure(string? name, HealthCheckOptions options)
    {
        if (options.Uri is not null)
        {
            options.Uris.Add(options.Uri);
        }
    }
}
