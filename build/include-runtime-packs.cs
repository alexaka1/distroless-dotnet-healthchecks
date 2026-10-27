#!/usr/bin/env dotnet
#:property PublishAot=false

using System.Text.Json;
using System.Text.Json.Nodes;

try
{
    return await IncludeRuntimePacks(args);
}
catch (Exception exception) when (exception is ArgumentException or FormatException or InvalidDataException or JsonException)
{
    Console.Error.WriteLine(exception.Message);
    return 1;
}

static async Task<int> IncludeRuntimePacks(string[] args)
{
    var arguments = Parse(args);
    var assets = JsonNode.Parse(await File.ReadAllTextAsync(arguments.Assets))?.AsObject()
        ?? throw new InvalidDataException($"'{arguments.Assets}' is not a JSON object.");
    var bom = JsonNode.Parse(await File.ReadAllTextAsync(arguments.Sbom))?.AsObject()
        ?? throw new InvalidDataException($"'{arguments.Sbom}' is not a JSON object.");

    var packs = RuntimePacks(assets, arguments.Runtime);
    var components = bom["components"] as JsonArray ?? [];
    bom["components"] = components;
    var known = components
        .OfType<JsonObject>()
        .Select(component => component["name"]?.GetValue<string>())
        .Where(name => name is not null)
        .ToHashSet(StringComparer.OrdinalIgnoreCase);

    var rootRef = bom["metadata"]?["component"]?["bom-ref"]?.GetValue<string>()
        ?? throw new InvalidDataException("The CycloneDX document has no metadata component bom-ref.");
    var dependencies = bom["dependencies"] as JsonArray ?? [];
    bom["dependencies"] = dependencies;
    var root = dependencies
        .OfType<JsonObject>()
        .FirstOrDefault(dependency => dependency["ref"]?.GetValue<string>() == rootRef);
    if (root is null)
    {
        root = new JsonObject { ["ref"] = rootRef };
        dependencies.Add(root);
    }

    var dependsOn = root["dependsOn"] as JsonArray ?? [];
    root["dependsOn"] = dependsOn;
    var referenced = dependsOn
        .Select(node => node?.GetValue<string>())
        .Where(reference => reference is not null)
        .ToHashSet(StringComparer.Ordinal);

    foreach (var pack in packs)
    {
        var purl = $"pkg:nuget/{pack.Name}@{pack.Version}";
        if (!known.Contains(pack.Name))
        {
            components.Add(new JsonObject
            {
                ["type"] = "library",
                ["bom-ref"] = purl,
                ["name"] = pack.Name,
                ["version"] = pack.Version,
                ["scope"] = "required",
                ["purl"] = purl,
            });
            known.Add(pack.Name);
        }

        if (referenced.Add(purl))
        {
            dependsOn.Add(purl);
        }
    }

    if (Environment.GetEnvironmentVariable("SOURCE_DATE_EPOCH") is { Length: > 0 } epochText
        && long.TryParse(epochText, out var epoch))
    {
        var metadata = bom["metadata"] as JsonObject ?? [];
        bom["metadata"] = metadata;
        metadata["timestamp"] = DateTimeOffset.FromUnixTimeSeconds(epoch).UtcDateTime.ToString("yyyy-MM-dd'T'HH:mm:ss'Z'");
    }

    await File.WriteAllTextAsync(arguments.Sbom, bom.ToJsonString(new JsonSerializerOptions { WriteIndented = true }) + "\n");
    return 0;
}

static List<(string Name, string Version)> RuntimePacks(JsonObject assets, string runtime)
{
    var frameworks = assets["project"]?["frameworks"] as JsonObject
        ?? throw new InvalidDataException("project.assets.json has no project.frameworks.");
    var suffix = "." + runtime;
    var packs = new List<(string Name, string Version)>();
    foreach (var framework in frameworks)
    {
        if (framework.Value?["downloadDependencies"] is not JsonArray downloads)
        {
            continue;
        }

        foreach (var download in downloads.OfType<JsonObject>())
        {
            var name = download["name"]?.GetValue<string>();
            if (name is null
                || !name.StartsWith("Microsoft.NETCore.App.Runtime.", StringComparison.Ordinal)
                || !name.EndsWith(suffix, StringComparison.Ordinal))
            {
                continue;
            }

            var range = download["version"]?.GetValue<string>()
                ?? throw new InvalidDataException($"'{name}' has no version range.");
            packs.Add((name, ExactVersion(range)));
        }
    }

    if (packs.Count == 0)
    {
        throw new InvalidDataException($"No Microsoft.NETCore.App.Runtime download dependency ends with '{suffix}'.");
    }

    return packs;
}

static string ExactVersion(string range)
{
    var trimmed = range.Trim();
    if (trimmed.Length < 5 || trimmed[0] != '[' || trimmed[^1] != ']')
    {
        throw new FormatException($"Expected an exact NuGet version range, got '{range}'.");
    }

    var parts = trimmed[1..^1].Split(',', StringSplitOptions.TrimEntries | StringSplitOptions.RemoveEmptyEntries);
    if (parts.Length != 2 || parts[0] != parts[1])
    {
        throw new FormatException($"Expected an exact NuGet version range, got '{range}'.");
    }

    return parts[0];
}

static (string Assets, string Sbom, string Runtime) Parse(string[] args)
{
    string? assets = null;
    string? sbom = null;
    string? runtime = null;
    for (var index = 0; index < args.Length; index++)
    {
        var value = index + 1 < args.Length ? args[index + 1] : null;
        switch (args[index])
        {
            case "--assets" when value is not null:
                assets = value;
                index++;
                break;
            case "--sbom" when value is not null:
                sbom = value;
                index++;
                break;
            case "--runtime" when value is not null:
                runtime = value;
                index++;
                break;
            default:
                throw new ArgumentException("Usage: include-runtime-packs.cs --assets <project.assets.json> --sbom <file.cdx.json> --runtime <rid>");
        }
    }

    if (assets is null || sbom is null || runtime is null)
    {
        throw new ArgumentException("Usage: include-runtime-packs.cs --assets <project.assets.json> --sbom <file.cdx.json> --runtime <rid>");
    }

    return (assets, sbom, runtime);
}
