using System.Net;
using Distroless.HealthChecks.Configuration;

namespace Distroless.HealthChecks;

public class HealthCheckOptions
{
    public Uri? Uri { get; set; }

    public List<Uri> Uris { get; set; } = [];

    public const string Key = "HealthCheck";
}

internal static class HealthCheckOptionsValidator
{
    private const string Category = "Distroless.HealthChecks.HealthCheckOptionsValidator";

    private static readonly Lazy<IPAddress[]> LocalAddresses = new(() =>
        [..Dns.GetHostAddresses(Dns.GetHostName()), IPAddress.Loopback, IPAddress.IPv6Loopback]);

    public static void Validate(AppConfiguration configuration, HealthCheckOptions options, Features.Features features)
    {
        var errors = new List<string>();

        if ((options.Uri is not null && options.Uris.Count > 1) ||
            (options.Uri is not null && options.Uris.Count is 1 && options.Uris[0] != options.Uri))
        {
            errors.Add("Uri and Uris cannot be used together. Please use only one of them.");
        }

        if (features.AllowUnsafeExternalUris is false)
        {
            foreach (var uri in options.Uris)
            {
                if (!IsLoopback(configuration, uri))
                {
                    errors.Add($"$Uri {uri} must be a loopback address");
                }
            }
        }

        if (errors.Count > 0)
        {
            throw new InvalidOperationException(string.Join(Environment.NewLine, errors));
        }
    }

    private static bool IsLoopback(AppConfiguration configuration, Uri uri)
    {
        try
        {
            if (uri.IsLoopback)
            {
                return true;
            }

            var hostAddresses = Dns.GetHostAddresses(uri.Host);
            ConsoleLog.UriHostAddress(configuration, Category, uri, hostAddresses);

            var localAddresses = LocalAddresses.Value;
            ConsoleLog.HostAddress(configuration, Category, localAddresses);

            return hostAddresses.Any(hostAddr => localAddresses.Any(hostAddr.Equals));
        }
        catch (Exception e)
        {
            ConsoleLog.UnableToDetermineHostAddress(configuration, Category, uri, e);
        }

        return false;
    }
}
