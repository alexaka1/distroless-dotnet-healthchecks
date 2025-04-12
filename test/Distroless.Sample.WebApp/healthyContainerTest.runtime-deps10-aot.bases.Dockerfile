# noble
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:9a8aa245ebc3e73eaa5787049957d764e05fe0f8fc3ad6723c3042464488ad82
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-trixie-slim
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:d089ac1c7a96166ec7a394564b9337934947c066b4f4dc02e41d9ee2555d7991
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:135c47f7f28b1416c3bf8e3b5ccdf8c1960174be08eae1e3323aced7a1bf5eaf
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
