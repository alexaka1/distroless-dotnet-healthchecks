using System.Text.Json.Serialization;

namespace Distroless.Sample.WebApp;

[JsonSerializable(typeof(Todo[]))]
[JsonSerializable(typeof(HealthStatus))]
internal partial class AppJsonSerializerContext : JsonSerializerContext;