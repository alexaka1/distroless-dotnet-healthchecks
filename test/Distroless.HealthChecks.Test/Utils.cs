using System.Diagnostics;

namespace Distroless.HealthChecks.Test;

public static class Utils
{
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
}
