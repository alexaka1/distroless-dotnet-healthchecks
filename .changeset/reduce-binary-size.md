---
"distroless-dotnet-healthchecks": patch
---

Reduce native binary size by removing health check framework dependencies, using a static HttpClient, and enabling AOT feature switches. Restore structured JSON failure reports and console-compatible stderr output without using `ILogger` in application code.
