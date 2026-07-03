using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace ReleaseBinarySize;

internal static class ReleaseNotesAppender
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
