namespace Distroless.HealthChecks;

public sealed class HealthFailureReport
{
    public required HealthStatus Status { get; init; }

    public TimeSpan TotalDuration { get; init; }

    public Dictionary<string, HealthFailureReportEntry> Entries { get; init; } = [];
}
