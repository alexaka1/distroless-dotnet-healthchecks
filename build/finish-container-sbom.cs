#!/usr/bin/env dotnet
#:property PublishAot=false

// Completes the CycloneDX file that dotnet-CycloneDX writes next to the Native AOT executable:
// - names the tool with the same pkg:generic purl that Syft derives from the ELF package note.
//   The tool is not on NuGet, so pkg:nuget would claim an identity that belongs to a future nupkg.
// - adds the Microsoft.NETCore.App.Runtime.* packs compiled into the executable. They are restore
//   download dependencies, which dotnet-CycloneDX does not emit, and .NET runtime advisories match them.
// - takes the timestamp from SOURCE_DATE_EPOCH so release builds stay reproducible.

using System.Text.Json;
using System.Text.Json.Nodes;

if (args is not [var assetsPath, var sbomPath, var runtime])
{
    Console.Error.WriteLine("Usage: finish-container-sbom.cs <project.assets.json> <file.cdx.json> <rid>");
    return 1;
}

var assets = JsonNode.Parse(await File.ReadAllTextAsync(assetsPath))!.AsObject();
var bom = JsonNode.Parse(await File.ReadAllTextAsync(sbomPath))!.AsObject();

var metadata = bom["metadata"]!.AsObject();
var root = metadata["component"]!.AsObject();
root["purl"] = $"pkg:generic/{root["name"]!.GetValue<string>()}@{root["version"]!.GetValue<string>()}";
var rootRef = root["bom-ref"]!.GetValue<string>();

var components = bom["components"] as JsonArray ?? [];
bom["components"] = components;
var dependencies = bom["dependencies"] as JsonArray ?? [];
bom["dependencies"] = dependencies;
var rootDependency = dependencies.OfType<JsonObject>().FirstOrDefault(d => d["ref"]?.GetValue<string>() == rootRef);
if (rootDependency is null)
{
    rootDependency = new JsonObject { ["ref"] = rootRef };
    dependencies.Add(rootDependency);
}

var dependsOn = rootDependency["dependsOn"] as JsonArray ?? [];
rootDependency["dependsOn"] = dependsOn;

var packs = assets["project"]!["frameworks"]!.AsObject()
    .SelectMany(framework => framework.Value?["downloadDependencies"]?.AsArray() ?? [])
    .Select(download => (Name: download!["name"]!.GetValue<string>(), Range: download["version"]!.GetValue<string>()))
    .Where(download => download.Name.StartsWith("Microsoft.NETCore.App.Runtime.", StringComparison.Ordinal)
        && download.Name.EndsWith("." + runtime, StringComparison.Ordinal))
    .ToList();
if (packs.Count == 0)
{
    Console.Error.WriteLine($"No Microsoft.NETCore.App.Runtime.*.{runtime} download dependency in '{assetsPath}'.");
    return 1;
}

foreach (var (name, range) in packs)
{
    // The SDK pins runtime packs to an exact range, "[version, version]".
    var bounds = range.Trim('[', ']').Split(',', StringSplitOptions.TrimEntries);
    if (bounds is not [var version, var upper] || version != upper)
    {
        Console.Error.WriteLine($"Expected an exact version range for '{name}', got '{range}'.");
        return 1;
    }

    var purl = $"pkg:nuget/{name}@{version}";
    components.Add(new JsonObject
    {
        ["type"] = "library",
        ["bom-ref"] = purl,
        ["name"] = name,
        ["version"] = version,
        ["scope"] = "required",
        ["purl"] = purl,
    });
    dependsOn.Add(purl);
}

if (long.TryParse(Environment.GetEnvironmentVariable("SOURCE_DATE_EPOCH"), out var epoch))
{
    metadata["timestamp"] = DateTimeOffset.FromUnixTimeSeconds(epoch).ToString("yyyy-MM-dd'T'HH:mm:ss'Z'");
}

await File.WriteAllTextAsync(sbomPath, bom.ToJsonString(new JsonSerializerOptions { WriteIndented = true }) + "\n");
return 0;
