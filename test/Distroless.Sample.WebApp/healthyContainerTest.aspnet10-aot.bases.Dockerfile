# noble
FROM mcr.microsoft.com/dotnet/nightly/aspnet:10.0-preview@sha256:386ad2124f063c528ee4c2d64e1d7d36461e3af51a6489927b28f94356755411
FROM mcr.microsoft.com/dotnet/nightly/aspnet:10.0-preview-trixie-slim@sha256:53f33b1166cbb771196f5c370eaa7fe78edb8d722b31d4e48584fe127f233ee4
FROM mcr.microsoft.com/dotnet/nightly/aspnet:10.0-preview-noble-chiseled@sha256:1723b14d14cb5fc019410736becf70b7f6555f1282f3524db9fab8e4be772992
FROM mcr.microsoft.com/dotnet/nightly/aspnet:10.0-preview-azurelinux3.0-distroless@sha256:a70255db06e2d1f3888cb518269ee20fcd4a38ff4ce8b5c49151d2c43fb040e3

# alpine
FROM mcr.microsoft.com/dotnet/nightly/aspnet:10.0-preview-alpine
