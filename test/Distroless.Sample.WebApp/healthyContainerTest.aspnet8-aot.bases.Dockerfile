FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:8757d38b7bef730a7723e28792b789c359fd24509a5cf6cb15143e4b44615fc0
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:786e93c7fcfae597a20e2f5de77b7c9b250d95e0f6d860ba6662440d0e63a39d
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:cf17c4278a8fd517206d4fb8ed30d864f186a38715ab3e54c94fd3cdbbfbf627
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:6adf1d5a74bceda87a6f3c1e6233201188c0186bccb16f6fda7851edda7ebe41
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:bf7d5995ce7eaa7b2966fc74e1af8a01bf9b987c254b9384cfa84c7f9c5de39d
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:bb6443801214b1147bf3946c802b257d5f910c2779d054936803fe91df9db6e6
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:594da3699785019d45c9a3deca93c32d66fbf93650579ef41464725a1ef0df2a
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:221c8631c234771a7915e4563d88cda8c96aa9faf184020aaf6fdb1a8023fd90
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:bad7ddbe5daa6da6a01eb3baa8c61a705ad94765b09fb026e2d289b930272e8e
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:941d86463c4f563a939def1b9734ce2ce60596dbe3217e2ac3210d40dd5a6ba6
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:b8a417f4f08eb3d7ce1589f3fbbf3ad84c03385541009bcfea5848efef3e63e7
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:28955bef62d4d2a3edbb32cf82a9406943caefe1c76404bd353c0ce8792280b2
