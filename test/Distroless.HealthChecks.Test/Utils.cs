using System.Diagnostics;

namespace Distroless.HealthChecks.Test;

public static class Utils
{
    public static async Task<(string output, string error)> InspectContainer(string containerId)
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

        string output = await process.StandardOutput.ReadToEndAsync();
        string error = await process.StandardError.ReadToEndAsync();

        await process.WaitForExitAsync();

        return (output.Trim(), error.Trim());
    }
}
