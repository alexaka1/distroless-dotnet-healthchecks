---
"distroless-dotnet-healthchecks": minor
---

Attach the health check to each GitHub release as a tarball for linux-x64, linux-arm64, linux-musl-x64 and linux-musl-arm64. Each tarball holds the image root (the executable, `appsettings.json` and the CycloneDX SBOM) and has a signed build provenance attestation.
