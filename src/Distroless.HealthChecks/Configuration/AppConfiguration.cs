using System.Collections;
using System.Text.Json;

namespace Distroless.HealthChecks.Configuration;

internal sealed class AppConfiguration
{
    private readonly Dictionary<string, string?> _values = new(StringComparer.OrdinalIgnoreCase);

    public string? this[string key] => Get(key);

    public static AppConfiguration Load(string contentRoot, string[] args)
    {
        var configuration = new AppConfiguration();
        var appsettingsPath = Path.Combine(contentRoot, "appsettings.json");
        if (File.Exists(appsettingsPath))
        {
            configuration.AddJsonFile(appsettingsPath);
        }

#if DEBUG
        var developmentPath = Path.Combine(contentRoot, "appsettings.Development.json");
        if (File.Exists(developmentPath))
        {
            configuration.AddJsonFile(developmentPath);
        }
#endif

        configuration.Set("Logging:LogLevel:Default", "Error");
        configuration.AddEnvironmentVariables("DISTROLESS_HEALTHCHECKS_");
        configuration.AddCommandLine(args);
        return configuration;
    }

    public HealthCheckOptions BindHealthCheckOptions()
    {
        var options = new HealthCheckOptions();

        if (TryGetUri("Uri", out var uri))
        {
            options.Uri = uri;
        }

        foreach (var indexedUri in GetIndexedValues("Uris"))
        {
            options.Uris.Add(indexedUri);
        }

        if (options.Uri is not null)
        {
            options.Uris.Add(options.Uri);
        }

        return options;
    }

    public Features.Features BindFeatures() =>
        new()
        {
            AllowUnsafeExternalUris = GetBool("Features:AllowUnsafeExternalUris"),
        };

    private void AddJsonFile(string path)
    {
        using var stream = File.OpenRead(path);
        using var document = JsonDocument.Parse(stream);
        AddJsonElement(string.Empty, document.RootElement);
    }

    private void AddJsonElement(string prefix, JsonElement element)
    {
        switch (element.ValueKind)
        {
            case JsonValueKind.Object:
                foreach (var property in element.EnumerateObject())
                {
                    var key = string.IsNullOrEmpty(prefix) ? property.Name : $"{prefix}:{property.Name}";
                    AddJsonElement(key, property.Value);
                }

                break;
            case JsonValueKind.Array:
                var index = 0;
                foreach (var item in element.EnumerateArray())
                {
                    AddJsonElement($"{prefix}:{index}", item);
                    index++;
                }

                break;
            default:
                Set(prefix, element.ToString());
                break;
        }
    }

    private void AddEnvironmentVariables(string prefix)
    {
        foreach (DictionaryEntry entry in Environment.GetEnvironmentVariables())
        {
            if (entry.Key is not string key || entry.Value is not string value)
            {
                continue;
            }

            if (!key.StartsWith(prefix, StringComparison.OrdinalIgnoreCase))
            {
                continue;
            }

            var configKey = key[prefix.Length..].Replace("__", ":", StringComparison.Ordinal);
            Set(configKey, value);
        }
    }

    private void AddCommandLine(string[] args)
    {
        for (var index = 0; index < args.Length; index++)
        {
            var arg = args[index];
            if (!arg.StartsWith("--", StringComparison.Ordinal))
            {
                continue;
            }

            var keyValue = arg[2..];
            string? value;
            var separatorIndex = keyValue.IndexOf('=');
            if (separatorIndex >= 0)
            {
                value = keyValue[(separatorIndex + 1)..];
                keyValue = keyValue[..separatorIndex];
            }
            else if (index + 1 < args.Length && !args[index + 1].StartsWith("--", StringComparison.Ordinal))
            {
                value = args[++index];
            }
            else
            {
                value = "true";
            }

            Set(NormalizeCommandLineKey(keyValue), value);
        }
    }

    private static string NormalizeCommandLineKey(string key) =>
        key.Replace("__", ":", StringComparison.Ordinal);

    private IEnumerable<Uri> GetIndexedValues(string section)
    {
        var prefix = section + ":";
        var indexedValues = new SortedDictionary<int, Uri>();

        foreach (var (key, value) in _values)
        {
            if (!key.StartsWith(prefix, StringComparison.OrdinalIgnoreCase) || string.IsNullOrEmpty(value))
            {
                continue;
            }

            var indexPart = key[prefix.Length..];
            if (!int.TryParse(indexPart, out var index))
            {
                continue;
            }

            indexedValues[index] = new Uri(value, UriKind.Absolute);
        }

        return indexedValues.Values;
    }

    private bool TryGetUri(string key, out Uri uri)
    {
        var value = Get(key);
        if (string.IsNullOrEmpty(value))
        {
            uri = default!;
            return false;
        }

        uri = new Uri(value, UriKind.Absolute);
        return true;
    }

    private bool GetBool(string key) =>
        bool.TryParse(Get(key), out var value) && value;

    private string? Get(string key)
    {
        if (_values.TryGetValue(key, out var value))
        {
            return value;
        }

        return null;
    }

    private void Set(string key, string? value) => _values[key] = value;
}
