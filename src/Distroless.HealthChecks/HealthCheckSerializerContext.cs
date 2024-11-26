using System.Text.Json.Serialization;
using HealthChecks.UI.Core;

namespace Distroless.HealthChecks;

[JsonSerializable(typeof(UIHealthReport))]
[JsonSerializable(typeof(Uri))]
[JsonSourceGenerationOptions(UseStringEnumConverter = true)]
public partial class HealthCheckSerializerContext : JsonSerializerContext;
