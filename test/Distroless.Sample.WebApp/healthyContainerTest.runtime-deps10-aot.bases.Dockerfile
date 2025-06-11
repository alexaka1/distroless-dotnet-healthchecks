# noble
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:24b444281d20175566e5431a40ee86e8502a8a56368fd24dd89006e5ebf2384f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-trixie-slim@sha256:ab41720164388d90a92a36495bea76e80945531abd93b17c115dc44e44298e39
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:8c3505e61fb6a69728ca788bad7409d5617707851cf27a12e67a83e2bfaea51c
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:429ee2ed26f36b8f7bd1e8ff658d912dfa3c81ccb723b6269824fc416350db60
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
