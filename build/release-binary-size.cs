#!/usr/bin/env dotnet
#:package NuGet.Versioning@7.6.0
#:package System.CommandLine@2.0.9
#:property PublishAot=false

using System.CommandLine;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using NuGet.Versioning;

Option<string> publishDirOption = new("--publish-dir")
{
    Description = "Directory containing the published binary output.",
    Required = true,
};

Option<string> variantOption = new("--variant")
{
    Description = "Image variant (ubuntu-chiseled or alpine).",
    Required = true,
};

Option<string> platformOption = new("--platform")
{
    Description = "Target platform (linux/amd64 or linux/arm64).",
    Required = true,
};

Option<string> outputOption = new("--output")
{
    Description = "Directory to write the binary size JSON artifact.",
    Required = true,
};

Command measureCommand = new("measure", "Measure binary size from a published build output directory.")
{
    publishDirOption,
    variantOption,
    platformOption,
    outputOption,
};

Option<string> sizesDirectoryOption = new("--sizes-dir")
{
    Description = "Directory containing binary size JSON artifacts.",
    Required = true,
};

Option<string> changesFileOption = new("--changes-file")
{
    Description = "Release notes file to append the binary size table to.",
    Required = true,
};

Option<string> repositoryOption = new("--repo")
{
    Description = "GitHub repository (owner/name).",
    Required = true,
};

Option<string> tagOption = new("--tag")
{
    Description = "Current release tag name.",
    Required = true,
};

Command appendReleaseCommand = new("append-release", "Append binary size comparison to release notes.")
{
    sizesDirectoryOption,
    changesFileOption,
    repositoryOption,
    tagOption,
};

RootCommand rootCommand = new("Measure and report distroless healthcheck binary sizes for GitHub releases.");
rootCommand.Subcommands.Add(measureCommand);
rootCommand.Subcommands.Add(appendReleaseCommand);

measureCommand.SetAction(async (parseResult, cancellationToken) =>
{
    try
    {
        await BinarySizeMeasurer.MeasureAsync(
            parseResult.GetValue(publishDirOption)!,
            parseResult.GetValue(variantOption)!,
            parseResult.GetValue(platformOption)!,
            parseResult.GetValue(outputOption)!,
            cancellationToken);

        return 0;
    }
    catch (Exception exception)
    {
        await Console.Error.WriteLineAsync(exception.Message);
        return 1;
    }
});

appendReleaseCommand.SetAction(async (parseResult, cancellationToken) =>
{
    try
    {
        using var githubClient = GitHubReleaseClient.CreateFromEnvironment();
        await ReleaseNotesAppender.AppendAsync(
            parseResult.GetValue(sizesDirectoryOption)!,
            parseResult.GetValue(changesFileOption)!,
            parseResult.GetValue(repositoryOption)!,
            parseResult.GetValue(tagOption)!,
            githubClient,
            cancellationToken);

        return 0;
    }
    catch (Exception exception)
    {
        await Console.Error.WriteLineAsync(exception.Message);
        return 1;
    }
});

return await rootCommand.Parse(args).InvokeAsync();

sealed record BinarySizeMeasurement(string Variant, string Platform, long Executable, long Total);

sealed class BinarySizeValues
{
    public long Executable { get; init; }

    public long Total { get; init; }
}

sealed class BinarySizeSnapshot
{
    public Dictionary<string, Dictionary<string, BinarySizeValues>> Sizes { get; init; } =
        new(StringComparer.Ordinal);

    public static BinarySizeSnapshot FromMeasurements(IEnumerable<BinarySizeMeasurement> measurements)
    {
        var snapshot = new BinarySizeSnapshot();

        foreach (var measurement in measurements)
        {
            if (!snapshot.Sizes.TryGetValue(measurement.Variant, out var platforms))
            {
                platforms = new Dictionary<string, BinarySizeValues>(StringComparer.Ordinal);
                snapshot.Sizes[measurement.Variant] = platforms;
            }

            platforms[measurement.Platform] = new BinarySizeValues
            {
                Executable = measurement.Executable,
                Total = measurement.Total,
            };
        }

        return snapshot;
    }

    public BinarySizeValues? TryGetValues(string variant, string platform)
    {
        if (!Sizes.TryGetValue(variant, out var platforms))
        {
            return null;
        }

        return platforms.TryGetValue(platform, out var values) ? values : null;
    }
}

static class BinarySizeFormatter
{
    public static string FormatBytes(long bytes)
    {
        var absolute = Math.Abs(bytes);

        if (absolute < 1024)
        {
            return $"{absolute} B";
        }

        if (absolute < 1024 * 1024)
        {
            return $"{absolute / 1024.0:F2} KB";
        }

        return $"{absolute / 1024.0 / 1024.0:F2} MB";
    }

    public static string FormatDelta(long current, long? previous)
    {
        if (previous is null or 0)
        {
            return "—";
        }

        var diff = current - previous.Value;
        if (diff == 0)
        {
            return "0 B (0.0%)";
        }

        var sign = diff > 0 ? "+" : "-";
        var percentage = Math.Abs(diff / (double)previous.Value * 100.0);

        return $"{sign}{FormatBytes(diff)} ({sign}{percentage:F1}%)";
    }
}

static class BinarySizeMeasurer
{
    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
        WriteIndented = false,
    };

    public static async Task MeasureAsync(
        string publishDirectory,
        string variant,
        string platform,
        string outputDirectory,
        CancellationToken cancellationToken = default)
    {
        var executablePath = Path.Combine(publishDirectory, "Distroless.HealthChecks");
        if (!File.Exists(executablePath))
        {
            throw new FileNotFoundException($"Executable not found at '{executablePath}'.");
        }

        var executableSize = new FileInfo(executablePath).Length;
        var totalSize = Directory
            .EnumerateFiles(publishDirectory, "*", SearchOption.AllDirectories)
            .Where(path => !IsBuildxExportArtifact(path))
            .Sum(path => new FileInfo(path).Length);

        var measurement = new BinarySizeMeasurement(variant, platform, executableSize, totalSize);
        var safePlatform = platform.Replace('/', '-');
        Directory.CreateDirectory(outputDirectory);
        var outputPath = Path.Combine(outputDirectory, $"{variant}-{safePlatform}.json");
        var json = JsonSerializer.Serialize(measurement, JsonOptions);
        await File.WriteAllTextAsync(outputPath, json, cancellationToken);
    }

    private static bool IsBuildxExportArtifact(string path)
    {
        var fileName = Path.GetFileName(path);

        if (fileName.Equals("provenance.json", StringComparison.OrdinalIgnoreCase))
        {
            return true;
        }

        return fileName.StartsWith("sbom", StringComparison.OrdinalIgnoreCase)
            && fileName.EndsWith(".spdx.json", StringComparison.OrdinalIgnoreCase);
    }
}

sealed class GitHubReleaseClient(HttpClient httpClient) : IDisposable
{
    private const string PackageTagPrefix = "distroless-dotnet-healthchecks@";

    public async Task<string?> GetPreviousReleaseBodyAsync(
        string repository,
        string currentTag,
        CancellationToken cancellationToken = default)
    {
        var releases = await GetReleasesAsync(repository, cancellationToken);
        var releaseTags = releases
            .Select(release => release.TagName)
            .Where(tag => tag.StartsWith(PackageTagPrefix, StringComparison.Ordinal))
            .Where(tag => !string.Equals(tag, currentTag, StringComparison.Ordinal))
            .ToList();

        var comparisonTag = SemverReleaseComparer.FindComparisonTag(currentTag, releaseTags);
        if (comparisonTag is null)
        {
            return null;
        }

        return releases
            .FirstOrDefault(release => string.Equals(release.TagName, comparisonTag, StringComparison.Ordinal))
            ?.Body;
    }

    private async Task<IReadOnlyList<GitHubRelease>> GetReleasesAsync(
        string repository,
        CancellationToken cancellationToken)
    {
        var releases = new List<GitHubRelease>();
        var page = 1;

        while (true)
        {
            using var response = await httpClient.GetAsync(
                $"repos/{repository}/releases?per_page=100&page={page}",
                cancellationToken);
            response.EnsureSuccessStatusCode();

            await using var stream = await response.Content.ReadAsStreamAsync(cancellationToken);
            var pageReleases = await JsonSerializer.DeserializeAsync<List<GitHubRelease>>(
                stream,
                cancellationToken: cancellationToken) ?? [];

            if (pageReleases.Count == 0)
            {
                break;
            }

            releases.AddRange(pageReleases);
            page++;
        }

        return releases;
    }

    public static GitHubReleaseClient CreateFromEnvironment()
    {
        var token = Environment.GetEnvironmentVariable("GH_TOKEN");
        var client = new HttpClient
        {
            BaseAddress = new Uri("https://api.github.com/"),
        };
        client.DefaultRequestHeaders.UserAgent.ParseAdd("distroless-dotnet-healthchecks-release-binary-size");
        client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/vnd.github+json"));

        if (!string.IsNullOrWhiteSpace(token))
        {
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
        }

        return new GitHubReleaseClient(client);
    }

    public void Dispose() => httpClient.Dispose();

    private sealed class GitHubRelease
    {
        [JsonPropertyName("tag_name")]
        public string TagName { get; init; } = string.Empty;

        [JsonPropertyName("body")]
        public string? Body { get; init; }
    }
}

static class SemverReleaseComparer
{
    private const string PackageTagPrefix = "distroless-dotnet-healthchecks@";

    public static string? FindComparisonTag(string currentTag, IEnumerable<string> releaseTags)
    {
        if (!TryParseTag(currentTag, out var currentVersion) || currentVersion is null)
        {
            return null;
        }

        var versions = releaseTags
            .Select(tag => TryParseTag(tag, out var version) ? version : null)
            .OfType<NuGetVersion>()
            .ToList();

        var stableVersions = versions
            .Where(version => !version.IsPrerelease)
            .ToList();

        NuGetVersion? comparisonVersion = currentVersion.IsPrerelease
            ? stableVersions.OrderByDescending(version => version).FirstOrDefault()
            : stableVersions
                .Where(version => version < currentVersion)
                .OrderByDescending(version => version)
                .FirstOrDefault();

        if (comparisonVersion is null)
        {
            return null;
        }

        return releaseTags
            .Where(tag => TryParseTag(tag, out var version) && version == comparisonVersion)
            .OrderByDescending(tag => tag, StringComparer.Ordinal)
            .FirstOrDefault();
    }

    private static bool TryParseTag(string tag, out NuGetVersion? version)
    {
        version = null;
        if (!tag.StartsWith(PackageTagPrefix, StringComparison.Ordinal))
        {
            return false;
        }

        if (!NuGetVersion.TryParse(tag[PackageTagPrefix.Length..], out var parsed))
        {
            return false;
        }

        version = parsed;
        return true;
    }
}

static class ReleaseNotesAppender
{
    private const string BinarySizesMarker = "binary-sizes:";

    private static readonly JsonSerializerOptions JsonReadOptions = new()
    {
        PropertyNameCaseInsensitive = true,
    };

    private static readonly JsonSerializerOptions JsonWriteOptions = new()
    {
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
        WriteIndented = false,
    };

    public static async Task AppendAsync(
        string sizesDirectory,
        string changesFile,
        string repository,
        string currentTag,
        GitHubReleaseClient githubClient,
        CancellationToken cancellationToken = default)
    {
        var currentSnapshot = LoadMeasurements(sizesDirectory);
        var previousBody = await githubClient.GetPreviousReleaseBodyAsync(repository, currentTag, cancellationToken);
        var previousSnapshot = ExtractPreviousSnapshot(previousBody);

        var builder = new StringBuilder();
        builder.AppendLine();
        builder.AppendLine("### Binary size");
        builder.AppendLine();
        builder.AppendLine("| Variant | Platform | Executable | Total | Δ Executable | Δ Total |");
        builder.AppendLine("| --- | --- | --- | --- | --- | --- |");

        foreach (var (variant, platform, values) in EnumerateRows(currentSnapshot))
        {
            var previousValues = previousSnapshot.TryGetValues(variant, platform);
            builder.Append("| ")
                .Append(variant)
                .Append(" | ")
                .Append(platform)
                .Append(" | ")
                .Append(BinarySizeFormatter.FormatBytes(values.Executable))
                .Append(" | ")
                .Append(BinarySizeFormatter.FormatBytes(values.Total))
                .Append(" | ")
                .Append(BinarySizeFormatter.FormatDelta(values.Executable, previousValues?.Executable))
                .Append(" | ")
                .Append(BinarySizeFormatter.FormatDelta(values.Total, previousValues?.Total))
                .AppendLine(" |");
        }

        builder.AppendLine();
        builder.Append("<!-- ")
            .Append(BinarySizesMarker)
            .Append(JsonSerializer.Serialize(currentSnapshot.Sizes, JsonWriteOptions))
            .AppendLine(" -->");

        await File.AppendAllTextAsync(changesFile, builder.ToString(), cancellationToken);
    }

    private static BinarySizeSnapshot LoadMeasurements(string sizesDirectory)
    {
        var measurements = Directory
            .EnumerateFiles(sizesDirectory, "*.json", SearchOption.TopDirectoryOnly)
            .Select(path => JsonSerializer.Deserialize<BinarySizeMeasurement>(
                File.ReadAllText(path),
                JsonReadOptions))
            .OfType<BinarySizeMeasurement>();

        return BinarySizeSnapshot.FromMeasurements(measurements);
    }

    private static BinarySizeSnapshot ExtractPreviousSnapshot(string? releaseBody)
    {
        if (string.IsNullOrWhiteSpace(releaseBody))
        {
            return new BinarySizeSnapshot();
        }

        const string markerStart = "<!-- binary-sizes:";
        const string markerEnd = " -->";
        var startIndex = releaseBody.IndexOf(markerStart, StringComparison.Ordinal);
        if (startIndex < 0)
        {
            return new BinarySizeSnapshot();
        }

        startIndex += markerStart.Length;
        var endIndex = releaseBody.IndexOf(markerEnd, startIndex, StringComparison.Ordinal);
        if (endIndex < 0)
        {
            return new BinarySizeSnapshot();
        }

        var encoded = releaseBody[startIndex..endIndex];
        var sizes = JsonSerializer.Deserialize<Dictionary<string, Dictionary<string, BinarySizeValues>>>(
            encoded,
            JsonReadOptions);

        return sizes is null ? new BinarySizeSnapshot() : new BinarySizeSnapshot { Sizes = sizes };
    }

    private static IEnumerable<(string Variant, string Platform, BinarySizeValues Values)> EnumerateRows(
        BinarySizeSnapshot snapshot)
    {
        return snapshot.Sizes
            .OrderBy(entry => entry.Key, StringComparer.Ordinal)
            .SelectMany(variantEntry => variantEntry.Value
                .OrderBy(entry => entry.Key, StringComparer.Ordinal)
                .Select(platformEntry => (variantEntry.Key, platformEntry.Key, platformEntry.Value)));
    }
}
