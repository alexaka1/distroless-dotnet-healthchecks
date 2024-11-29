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
                foreach (var uri in options.Uris.Where(uri => !uri.IsLoopback))
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
                if (!f.AllowUnsafeExternalUris && !uriResult.IsLoopback)
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

    [LoggerMessage(Level = LogLevel.Warning, Message = "Invalid uri '{Uri}'", EventName = "InvalidUri")]
    private partial void LogInvalidUri(string uri);

    [LoggerMessage(Level = LogLevel.Debug, Message = "Urls: {Urls}", EventName = "Urls")]
    private partial void LogUrls(string? urls);
}
