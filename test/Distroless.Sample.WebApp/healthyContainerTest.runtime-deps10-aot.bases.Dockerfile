# noble
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:237955352cba35551eac28f931b78286e423825873562cd0a8664ac1f13a168c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-trixie-slim@sha256:ae409780c35306da2d6e9a32a23b4982a5c4f52f83f60eadb8b9f6124cf96eb1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:4a40f5d454377eef02483a8b357052ed6e5cab9acd9747f245d4110d93b58d56
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:efbd927b6471afb422b53cbb41e9bb57e5a8cf5e8ae19640b2bf48880cabd8ab
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
