using System.Text.Json;

namespace ReleaseBinarySize;

internal static class DockerBinaryMeasurer
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
