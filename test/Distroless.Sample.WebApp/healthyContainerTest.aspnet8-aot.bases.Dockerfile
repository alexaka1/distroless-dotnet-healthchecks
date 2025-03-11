FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:8757d38b7bef730a7723e28792b789c359fd24509a5cf6cb15143e4b44615fc0
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:786e93c7fcfae597a20e2f5de77b7c9b250d95e0f6d860ba6662440d0e63a39d
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:cf17c4278a8fd517206d4fb8ed30d864f186a38715ab3e54c94fd3cdbbfbf627
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:6adf1d5a74bceda87a6f3c1e6233201188c0186bccb16f6fda7851edda7ebe41
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:bf7d5995ce7eaa7b2966fc74e1af8a01bf9b987c254b9384cfa84c7f9c5de39d
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:e27c3884aa70bfe28cd1d6b887edc032217d3589029061ea7e8a55997cbe7fec
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:cd29fb32f744c73bfc578502982a225cd39aa9ba34f75ae043a7f56209e7bf18
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:82cb6ce9eb3f6c7c7580cd7e6a002a181533ef03e4c68ba25bc028f91d13574b
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:7aedab6cab643038f71ebd1faf7bc1102fc68581885977ca653837f1df0e9f86
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:30b934ac6981fa947ad941dcd6baa431bb60b2baefc931a03212b3f4d6481633
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:5dec026a5eb1af09479dfbc1097ef9af6b27bca063539c89b6b1ead9a0e64f68
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:56775258bf6ee961c88ecd7427d015c10b6c479e966a5b321689017e3b8d8576
