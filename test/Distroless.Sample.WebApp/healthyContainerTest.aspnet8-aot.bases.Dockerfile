FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:3a305bc84767bbb651bd035119fe319a91fe927155706f7296499ca0205c812a
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:29db3c80bd2c538f4dbc5910329374fa9b6a810722b2bc4bd7c2a8ebceb1f51c
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:d69a25333aa44a7c5188899b5fe03cc7eb0d1317594bdced3bca78835fc44e49
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:6adf1d5a74bceda87a6f3c1e6233201188c0186bccb16f6fda7851edda7ebe41
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:bf7d5995ce7eaa7b2966fc74e1af8a01bf9b987c254b9384cfa84c7f9c5de39d
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:bb6443801214b1147bf3946c802b257d5f910c2779d054936803fe91df9db6e6
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:6fc7a3884e4abcb3a73186656bf774b4050aa219d5eac8560417ad60c4126425
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:7728369d6bfb70507e07db73dd6cfe172ee4573843085d164ddd171656c31699
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:ec891e979b4bed142e21bcb11b745ccb8fa38bc0cf874b521c9cf0cc2eee61af
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:e18f09cfdfc5917924d17616b6b401b0a3a023f5860a4a00b39c2b140d9a6086
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:66b13ae8e0da94f1d6255fa84f2c4826ad496abdd255b02de425588199325abf
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:6c5c80e34f799fc11f91445a67f4a29ec9b00e1c6322780ccde8f99cd5aee6d5
