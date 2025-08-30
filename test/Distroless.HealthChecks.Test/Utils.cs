using System.Diagnostics;
using DotNet.Testcontainers.Builders;

namespace Distroless.HealthChecks.Test;

public static class Utils
{
    public static string CurrentBaseImageType()
    {
        return Environment.GetEnvironmentVariable("BASE_IMAGE_TYPE") ?? "ubuntu-chiseled";
    }

    public static string HealthCheckImage()
    {
        return Environment.GetEnvironmentVariable("HEALTHCHECK_IMAGE") ?? "distroless-dotnet-healthchecks:test";
    }

    public static IEnumerable<DockerImage> FilterByBaseImageType(IEnumerable<DockerImage> images, string baseImageType)
    {
        return images.Where(image => ShouldIncludeImage(image, baseImageType));
    }

    public static bool ShouldIncludeImage(DockerImage image, string baseImageType)
    {
        return baseImageType switch
        {
            "alpine" => image.Tag.Contains("alpine", StringComparison.OrdinalIgnoreCase),
            // Default: exclude alpine-specific tags for glibc-based runs
            _ => !image.Tag.Contains("alpine", StringComparison.OrdinalIgnoreCase),
        };
    }

    public static async Task<(string output, string error)> InspectContainer(string containerId,
        CancellationToken cancellationToken = default)
    {
        var process = new Process
        {
            StartInfo = new ProcessStartInfo
            {
                Arguments = $$$"""-c "docker inspect --format='{{json .State.Health}}' {{{containerId}}}" """,
                FileName = "bash",
                RedirectStandardOutput = true,
                RedirectStandardError = true,
                CreateNoWindow = true,
            },
        };

        process.Start();

        string output = await process.StandardOutput.ReadToEndAsync(cancellationToken);
        string error = await process.StandardError.ReadToEndAsync(cancellationToken);

        await process.WaitForExitAsync(cancellationToken);

        return (output.Trim(), error.Trim());
    }

    public static List<DockerImage> GetImageTagsFromDockerfile(string dockerfile)
    {
        if (!Path.IsPathRooted(dockerfile))
        {
            dockerfile = Path.Combine(CommonDirectoryPath.GetSolutionDirectory().DirectoryPath, dockerfile);
        }

        var images = new List<DockerImage>();
        using var stream =
            File.OpenRead(dockerfile);
        using var reader = new StreamReader(stream);
        while (reader.ReadLine() is { } line)
        {
            const string Prefix = "FROM ";
            if (!line.StartsWith(Prefix, StringComparison.OrdinalIgnoreCase))
            {
                continue;
            }

            int tagSeparator = line.IndexOf(':');
            images.Add(new DockerImage(line[Prefix.Length..tagSeparator], line[(tagSeparator + 1)..]));
        }

        return images;
    }
}
