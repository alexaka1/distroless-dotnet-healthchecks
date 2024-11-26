using Microsoft.Extensions.Diagnostics.HealthChecks;

namespace Distroless.HealthChecks;

public class StatusResult
{
    public HealthStatus HealthStatus { get; set; } = HealthStatus.Healthy;

    /// <summary>
    /// Exit codes for the service.
    /// </summary>
    public static class ExitCodes
    {
        /// <summary>
        /// The service is overall healthy.
        /// </summary>
        public const byte Healthy = 0;
        /// <summary>
        /// The service is overall unhealthy.
        /// </summary>
        public const byte UnHealthy = 1;
        public const byte Degraded = 2;
    }

    public static byte ToExitCode(HealthStatus healthStatus)
    {
        return healthStatus switch
        {
            HealthStatus.Healthy => ExitCodes.Healthy,
            HealthStatus.Unhealthy => ExitCodes.UnHealthy,
            HealthStatus.Degraded => ExitCodes.Degraded,
            _ => ExitCodes.UnHealthy,
        };
    }
}
