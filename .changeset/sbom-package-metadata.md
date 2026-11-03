---
"distroless-dotnet-healthchecks": patch
---

Identify the Native AOT health check in Docker SBOM scans. The executable carries an ELF package note with its name and version, and publish writes a CycloneDX file next to it so a copied image root includes the NuGet graph and the .NET runtime pack.
