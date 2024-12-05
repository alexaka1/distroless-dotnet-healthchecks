FROM mcr.microsoft.com/dotnet/runtime-deps:8.0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless
FROM mcr.microsoft.com/dotnet/nigthly/runtime-deps:8.0
FROM mcr.microsoft.com/dotnet/nigthly/runtime-deps:8.0-noble
FROM mcr.microsoft.com/dotnet/nigthly/runtime-deps:8.0-jammy
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless-aot
