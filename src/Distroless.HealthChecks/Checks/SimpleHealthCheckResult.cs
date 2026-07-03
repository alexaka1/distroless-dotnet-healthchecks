namespace Distroless.HealthChecks.Checks;

public sealed class SimpleHealthCheckResult(
    HealthStatus status,
    string? description,
    Exception? exception,
    IReadOnlyDictionary<string, object> data,
    TimeSpan duration)
{
    public HealthStatus Status { get; } = status;

    public string? Description { get; } = description;

    public Exception? Exception { get; } = exception;

    public IReadOnlyDictionary<string, object> Data { get; } = data;

    public TimeSpan Duration { get; } = duration;
}
