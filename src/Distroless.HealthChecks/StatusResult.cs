using Microsoft.Extensions.Diagnostics.HealthChecks;

namespace Distroless.HealthChecks;

public class StatusResult
{
    public HealthStatus HealthStatus { get; set; } = HealthStatus.Healthy;

    public static class ExitCodes
    {
        public const byte Healthy = 0;
        public const byte UnHealthy = 1;
        public const byte Degraded = 2;
    }
}
