using System.Text.Json.Serialization;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

namespace Distroless.HealthChecks;

public class HealthCheckOptions
{
    public const string Key = "HealthCheck";

    public string? Urls { get; set; }

    [JsonIgnore]
    public List<Uri> Uris { get; set; } = [];
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
                InvalidUri(uri);
            }
        }

        if (options.Uris.Count == 0)
        {
            NoValidUri();
        }
    }

    [LoggerMessage(Level = LogLevel.Warning, Message = "Invalid uri '{Uri}'")]
    private partial void InvalidUri(string uri);

    [LoggerMessage(Level = LogLevel.Error, Message = "No valid uri found")]
    private partial void NoValidUri();
}
