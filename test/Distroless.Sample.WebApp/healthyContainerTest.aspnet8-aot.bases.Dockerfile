FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:3a305bc84767bbb651bd035119fe319a91fe927155706f7296499ca0205c812a
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:29db3c80bd2c538f4dbc5910329374fa9b6a810722b2bc4bd7c2a8ebceb1f51c
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:e7d3378dd5d39d8c011937619fb57c00485414a89ac2ebeb10427f79ab3f00e8
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:6adf1d5a74bceda87a6f3c1e6233201188c0186bccb16f6fda7851edda7ebe41
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:bf7d5995ce7eaa7b2966fc74e1af8a01bf9b987c254b9384cfa84c7f9c5de39d
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:bb6443801214b1147bf3946c802b257d5f910c2779d054936803fe91df9db6e6
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:6fc7a3884e4abcb3a73186656bf774b4050aa219d5eac8560417ad60c4126425
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:7728369d6bfb70507e07db73dd6cfe172ee4573843085d164ddd171656c31699
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:f0e90e5be029c084415f13d45eebba7cc875657d312e168251daf60c35f4eed5
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:941d86463c4f563a939def1b9734ce2ce60596dbe3217e2ac3210d40dd5a6ba6
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:b8a417f4f08eb3d7ce1589f3fbbf3ad84c03385541009bcfea5848efef3e63e7
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:6c5c80e34f799fc11f91445a67f4a29ec9b00e1c6322780ccde8f99cd5aee6d5
