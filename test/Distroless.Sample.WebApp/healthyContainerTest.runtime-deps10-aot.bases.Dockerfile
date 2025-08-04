# noble
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:360fe5aac547e9982bc2a8b866b9262bf84a90b3db513fcdf4d3178a88ae7cf6
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-trixie-slim@sha256:8968d18986593cf13ab5982124395efb40af84d2a49d287c471e903f985a47b3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:189b7094786620dbb3a0253e67751ffaeadb7b4a2d6d0c6cc16c16e10e425b94
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:5163c09c15f1e6c2d690475c5e0bd997202e091a724792ae70951eea0415518e
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
