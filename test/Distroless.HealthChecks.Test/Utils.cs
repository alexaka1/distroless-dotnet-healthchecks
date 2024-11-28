using System.Diagnostics;

namespace Distroless.HealthChecks.Test;

public class Utils
{
    public static async Task<(string output, string error)> InspectContainer(string containerId)
    {
        var cts = new CancellationTokenSource(TimeSpan.FromSeconds(30));
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

        string output = await process.StandardOutput.ReadToEndAsync(cts.Token);
        string error = await process.StandardError.ReadToEndAsync(cts.Token);

        await process.WaitForExitAsync(cts.Token);

        return (output.Trim(), error.Trim());
    }
}
