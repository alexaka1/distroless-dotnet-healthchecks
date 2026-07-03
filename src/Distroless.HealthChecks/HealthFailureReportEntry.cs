namespace Distroless.HealthChecks;

public sealed class HealthFailureReportEntry
{
    public Dictionary<string, string> Data { get; init; } = [];

    public string? Description { get; init; }

    public TimeSpan Duration { get; init; }

    public string? Exception { get; init; }

    public HealthStatus Status { get; init; }

    public string[] Tags { get; init; } = [];
}
