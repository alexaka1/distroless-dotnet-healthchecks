#!/usr/bin/env dotnet
#:package NuGet.Versioning@7.6.0
#:property PublishAot=false

using System.Diagnostics;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using NuGet.Versioning;

if (args.Length == 0)
{
    PrintUsage();
    return 1;
}

try
{
    return args[0] switch
    {
        "measure" => await RunMeasureAsync(args[1..]),
        "append-release" => await RunAppendReleaseAsync(args[1..]),
        _ => UnknownCommand(args[0]),
    };
}
catch (Exception exception)
{
    await Console.Error.WriteLineAsync(exception.Message);
    return 1;
}

static async Task<int> RunMeasureAsync(string[] commandArgs)
{
    var options = ParseOptions(commandArgs);
    var digest = RequireOption(options, "digest");
    var variant = RequireOption(options, "variant");
    var platform = RequireOption(options, "platform");
    var output = RequireOption(options, "output");

    await DockerBinaryMeasurer.MeasureAsync(digest, variant, platform, output);
    return 0;
}

static async Task<int> RunAppendReleaseAsync(string[] commandArgs)
{
    var options = ParseOptions(commandArgs);
    var sizesDirectory = RequireOption(options, "sizes-dir");
    var changesFile = RequireOption(options, "changes-file");
    var repository = RequireOption(options, "repo");
    var tag = RequireOption(options, "tag");

    using var githubClient = GitHubReleaseClient.CreateFromEnvironment();
    await ReleaseNotesAppender.AppendAsync(
        sizesDirectory,
        changesFile,
        repository,
        tag,
        githubClient);

    return 0;
}

static Dictionary<string, string> ParseOptions(string[] commandArgs)
{
    var options = new Dictionary<string, string>(StringComparer.Ordinal);

    for (var index = 0; index < commandArgs.Length; index++)
    {
        var argument = commandArgs[index];
        if (!argument.StartsWith("--", StringComparison.Ordinal))
        {
            throw new InvalidOperationException($"Unknown argument: {argument}");
        }

        var key = argument[2..];
        if (index + 1 >= commandArgs.Length)
        {
            throw new InvalidOperationException($"Missing value for --{key}");
        }

        options[key] = commandArgs[++index];
    }

    return options;
}

static string RequireOption(IReadOnlyDictionary<string, string> options, string key)
{
    if (!options.TryGetValue(key, out var value) || string.IsNullOrWhiteSpace(value))
    {
        throw new InvalidOperationException($"Missing required option --{key}");
    }

    return value;
}

static int UnknownCommand(string command)
{
    Console.Error.WriteLine($"Unknown command: {command}");
    PrintUsage();
    return 1;
}

static void PrintUsage()
{
    Console.Error.WriteLine(
        """
        Usage:
          release-binary-size.cs measure --digest <digest> --variant <variant> --platform <platform> --output <dir>
          release-binary-size.cs append-release --sizes-dir <dir> --changes-file <file> --repo <owner/repo> --tag <tag>
        """);
}

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
        var percentage = previous.Value == 0 ? 0.0 : diff / (double)previous.Value * 100.0;

        return $"{sign}{FormatBytes(diff)} ({sign}{percentage:F1}%)";
    }
}

static class ProcessRunner
{
    public static async Task RunAsync(
        string fileName,
        IReadOnlyList<string> arguments,
        CancellationToken cancellationToken = default)
    {
        using var process = new Process
        {
            StartInfo = new ProcessStartInfo
            {
                FileName = fileName,
                RedirectStandardOutput = true,
                RedirectStandardError = true,
                UseShellExecute = false,
            },
        };

        foreach (var argument in arguments)
        {
            process.StartInfo.ArgumentList.Add(argument);
        }

        if (!process.Start())
        {
            throw new InvalidOperationException($"Failed to start process: {fileName}");
        }

        var stdout = await process.StandardOutput.ReadToEndAsync(cancellationToken);
        var stderr = await process.StandardError.ReadToEndAsync(cancellationToken);
        await process.WaitForExitAsync(cancellationToken);

        if (process.ExitCode != 0)
        {
            throw new InvalidOperationException(
                $"Command '{fileName} {string.Join(' ', arguments)}' failed with exit code {process.ExitCode}.{Environment.NewLine}{stderr}{stdout}");
        }
    }

    public static async Task<string> RunForOutputAsync(
        string fileName,
        IReadOnlyList<string> arguments,
        CancellationToken cancellationToken = default)
    {
        using var process = new Process
        {
            StartInfo = new ProcessStartInfo
            {
                FileName = fileName,
                RedirectStandardOutput = true,
                RedirectStandardError = true,
                UseShellExecute = false,
            },
        };

        foreach (var argument in arguments)
        {
            process.StartInfo.ArgumentList.Add(argument);
        }

        if (!process.Start())
        {
            throw new InvalidOperationException($"Failed to start process: {fileName}");
        }

        var stdout = await process.StandardOutput.ReadToEndAsync(cancellationToken);
        var stderr = await process.StandardError.ReadToEndAsync(cancellationToken);
        await process.WaitForExitAsync(cancellationToken);

        if (process.ExitCode != 0)
        {
            throw new InvalidOperationException(
                $"Command '{fileName} {string.Join(' ', arguments)}' failed with exit code {process.ExitCode}.{Environment.NewLine}{stderr}");
        }

        return stdout;
    }
}

static class DockerBinaryMeasurer
{
    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
        WriteIndented = false,
    };

    public static async Task MeasureAsync(
        string digest,
        string variant,
        string platform,
        string outputDirectory,
        CancellationToken cancellationToken = default)
    {
        var extractDirectory = Path.Combine(outputDirectory, "extract");
        Directory.CreateDirectory(extractDirectory);

        var containerId = (await ProcessRunner.RunForOutputAsync(
            "docker",
            ["create", digest],
            cancellationToken)).Trim();

        try
        {
            var executablePath = Path.Combine(extractDirectory, "Distroless.HealthChecks");
            var publishDirectory = Path.Combine(extractDirectory, "publish");

            await ProcessRunner.RunAsync(
                "docker",
                ["cp", $"{containerId}:/Distroless.HealthChecks", executablePath],
                cancellationToken);
            Directory.CreateDirectory(publishDirectory);
            await ProcessRunner.RunAsync(
                "docker",
                ["cp", $"{containerId}:/.", publishDirectory],
                cancellationToken);

            var executableSize = new FileInfo(executablePath).Length;
            var totalSize = Directory
                .EnumerateFiles(publishDirectory, "*", SearchOption.AllDirectories)
                .Sum(path => new FileInfo(path).Length);

            var measurement = new BinarySizeMeasurement(variant, platform, executableSize, totalSize);
            var safePlatform = platform.Replace('/', '-');
            var outputPath = Path.Combine(outputDirectory, $"{variant}-{safePlatform}.json");
            var json = JsonSerializer.Serialize(measurement, JsonOptions);
            await File.WriteAllTextAsync(outputPath, json, cancellationToken);
        }
        finally
        {
            await ProcessRunner.RunAsync(
                "docker",
                ["rm", "-f", containerId],
                cancellationToken);
        }
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
            .ToList();

        var comparisonTag = SemverReleaseComparer.FindComparisonTag(currentTag, releaseTags);
        if (comparisonTag is null)
        {
            return null;
        }

        using var response = await httpClient.GetAsync(
            $"repos/{repository}/releases/tags/{Uri.EscapeDataString(comparisonTag)}",
            cancellationToken);
        response.EnsureSuccessStatusCode();

        await using var stream = await response.Content.ReadAsStreamAsync(cancellationToken);
        var release = await JsonSerializer.DeserializeAsync<GitHubRelease>(
            stream,
            cancellationToken: cancellationToken);

        return release?.Body;
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

        return $"{PackageTagPrefix}{comparisonVersion}";
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
    public const string BinarySizesMarker = "binary-sizes:";

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
