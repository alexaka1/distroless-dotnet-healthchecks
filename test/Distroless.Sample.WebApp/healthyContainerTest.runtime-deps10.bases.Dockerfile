FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:69ee6d1a1b7a92cc82a71001342554d4611a509d880114b2d5653ff5e73eb436
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-noble-chiseled@sha256:b857c8cb8d929183cfe4c6dd9994abba92a2639dd2dbaf06005379f815991604
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-azurelinux3.0-distroless@sha256:c702983a65f9125ca02d3b19cf824856adc4c37fd89ead80ca03862cdc577bce
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:1fd78069f27801d913e9a84f463a50b13a2c964c7a9a013051bde952bb4afaf9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine
