FROM mcr.microsoft.com/dotnet/runtime:9.0
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless
FROM mcr.microsoft.com/dotnet/nigthly/runtime:9.0
FROM mcr.microsoft.com/dotnet/nigthly/runtime:9.0-noble
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless
