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

public partial class PostConfigureHealthCheckOptions(ILogger<PostConfigureHealthCheckOptions> logger)
    : IPostConfigureOptions<HealthCheckOptions>
{
    public void PostConfigure(string? name, HealthCheckOptions options)
    {
        if (string.IsNullOrWhiteSpace(options.Urls))
        {
            // The complex configuration was probably used.
            return;
        }

        if (options.Uris.Count != 0)
        {
            // Someone has already configured the Uris.
            // They know what they are doing.
            return;
        }

        string[] uris = options.Urls.Split(',', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries);
        foreach (string uri in uris)
        {
            if (Uri.TryCreate(uri, UriKind.Absolute, out var uriResult))
            {
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
}
