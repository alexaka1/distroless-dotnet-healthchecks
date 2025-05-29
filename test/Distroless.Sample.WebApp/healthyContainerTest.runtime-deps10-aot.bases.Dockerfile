# noble
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:24b444281d20175566e5431a40ee86e8502a8a56368fd24dd89006e5ebf2384f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-trixie-slim@sha256:2004f6e8ad07c0fb13b83d7656a2591a1f70e71c3c536884da6405f5a8df0a28
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:8c3505e61fb6a69728ca788bad7409d5617707851cf27a12e67a83e2bfaea51c
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:9986b159cd530c5eeb72ceeaef2a9653f90f10bfc6149803bc62db9662d3679a
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
