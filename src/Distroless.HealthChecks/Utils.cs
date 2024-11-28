namespace Distroless.HealthChecks;

public class Utils
{
    /// <summary>
    ///     Sets the current directory to the location of the binary. This is required for,
    ///     because HEALTHCHECK always executes in the context of the very last WORKDIR,
    ///     which may or may not be the same as the location of the binary.
    /// </summary>
    /// <exception cref="DirectoryNotFoundException"></exception>
    public static void SetCurrentDirectoryToBinaryLocation()
    {
        string? location = Path.GetDirectoryName(AppContext.BaseDirectory);
        if (string.IsNullOrWhiteSpace(location))
        {
            throw new DirectoryNotFoundException("Could not get current directory");
        }

        Directory.SetCurrentDirectory(location);
    }
}
