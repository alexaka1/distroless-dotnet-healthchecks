---
"distroless-dotnet-healthchecks": patch
---

Fix release binary size measurement by reading build output locally instead of pulling digest images, and exclude buildx SBOM/provenance artifacts from total size.
