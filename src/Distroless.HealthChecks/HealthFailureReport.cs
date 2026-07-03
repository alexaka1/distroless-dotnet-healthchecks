namespace Distroless.HealthChecks;

public enum HealthFailureStatus
{
    Unhealthy = 0,
    Degraded = 1,
    Healthy = 2,
}

public sealed class HealthFailureReport
{
    public required HealthFailureStatus Status { get; init; }

    public TimeSpan TotalDuration { get; init; }

    public Dictionary<string, HealthFailureReportEntry> Entries { get; init; } = [];
}

public sealed class HealthFailureReportEntry
{
    public Dictionary<string, string> Data { get; init; } = [];

    public string? Description { get; init; }

    public TimeSpan Duration { get; init; }

    public string? Exception { get; init; }

    public HealthFailureStatus Status { get; init; }

    public string[] Tags { get; init; } = [];
}
