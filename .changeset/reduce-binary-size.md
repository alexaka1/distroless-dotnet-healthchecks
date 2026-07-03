---
"distroless-dotnet-healthchecks": patch
---

Reduce native binary size by removing health check framework dependencies, using a static HttpClient, dropping console logging, and enabling AOT feature switches.
