using System.Text.Json.Serialization;

namespace Distroless.HealthChecks;

[JsonSerializable(typeof(HealthFailureReport))]
[JsonSerializable(typeof(HealthFailureReportEntry))]
[JsonSerializable(typeof(Dictionary<string, HealthFailureReportEntry>))]
[JsonSerializable(typeof(Dictionary<string, string>))]
[JsonSerializable(typeof(TimeSpan))]
[JsonSourceGenerationOptions(UseStringEnumConverter = true)]
public partial class HealthCheckSerializerContext : JsonSerializerContext;
