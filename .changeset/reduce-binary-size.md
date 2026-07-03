---
"distroless-dotnet-healthchecks": patch
---

Reduce native binary size by removing health check framework dependencies, using a static HttpClient, dropping console logging, and enabling AOT feature switches. Restore structured JSON failure reports with a minimal in-app serializer compatible with the previous `UIHealthReport` shape.
