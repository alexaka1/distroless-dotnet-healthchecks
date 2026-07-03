namespace Distroless.HealthChecks;

public class StatusResult
{
    public HealthStatus HealthStatus { get; set; } = HealthStatus.Healthy;

    /// <summary>
    ///     Convert a <see cref="HealthStatus" /> to an exit code.
    /// </summary>
    /// <param name="healthStatus"></param>
    /// <remarks>https://docs.docker.com/reference/dockerfile/#healthcheck</remarks>
    /// <returns></returns>
    public static byte ToExitCode(HealthStatus healthStatus)
    {
        return healthStatus switch
        {
            HealthStatus.Healthy => ExitCodes.Healthy,
            HealthStatus.Degraded => ExitCodes.Degraded,
            HealthStatus.Unhealthy => ExitCodes.UnHealthy,
            _ => ExitCodes.UnHealthy,
        };
    }

    /// <summary>
    ///     Exit codes for the service.
    /// </summary>
    public static class ExitCodes
    {
        /// <summary>
        ///     The service is overall healthy.
        /// </summary>
        public const byte Healthy = 0;

        /// <summary>
        ///     The service is overall unhealthy.
        /// </summary>
        public const byte UnHealthy = 1;

        // ReSharper disable once UnusedMember.Global
        public const byte Degraded = 2;
    }
}
