---
"distroless-dotnet-healthchecks": minor
---

Remove the `Microsoft.Extensions.Hosting` NuGet dependency and replace it with a lightweight built-in configuration layer. This reduces the native AOT binary size by approximately 1.5 MB (~20%) while preserving configuration via `DISTROLESS_HEALTHCHECKS_` environment variables, command-line `--uri` arguments, and appsettings files.
