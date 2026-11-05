---
"distroless-dotnet-healthchecks": patch
---

Build the health check with the .NET 11 RC 3 SDK, which fixes the Native AOT compiler vulnerability [GHSA-p3jp-9v83-76w9](https://github.com/advisories/GHSA-p3jp-9v83-76w9) (CVE-2026-111497). 1.8.0 was never published, because its release build failed on this advisory, so this release ships the 1.8.0 changes too.
