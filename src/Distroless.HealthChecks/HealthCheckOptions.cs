using System.Net;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Options;

namespace Distroless.HealthChecks;

public class HealthCheckOptions
{
    public Uri? Uri { get; set; }

    public List<Uri> Uris { get; set; } = [];

    public const string Key = "HealthCheck";
}

public class HealthCheckOptionsValidator(
    IConfiguration configuration,
    IOptions<Features.Features> features)
    : IValidateOptions<HealthCheckOptions>
{
    private const string Category = "Distroless.HealthChecks.HealthCheckOptionsValidator";

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
                if (!string.Equals(uri.Scheme, Uri.UriSchemeHttp, StringComparison.OrdinalIgnoreCase))
                {
                    builder.AddError($"$Uri {uri} must use the http scheme", nameof(options.Uris));
                    continue;
                }

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

            var hostAddresses = Dns.GetHostAddresses(uri.Host);
            ConsoleLog.UriHostAddress(configuration, Category, uri, hostAddresses);

            var localAddresses = _localAddresses.Value;
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
