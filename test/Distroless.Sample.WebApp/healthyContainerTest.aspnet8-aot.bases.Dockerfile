FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:3a305bc84767bbb651bd035119fe319a91fe927155706f7296499ca0205c812a
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:29db3c80bd2c538f4dbc5910329374fa9b6a810722b2bc4bd7c2a8ebceb1f51c
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:e7d3378dd5d39d8c011937619fb57c00485414a89ac2ebeb10427f79ab3f00e8
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:6adf1d5a74bceda87a6f3c1e6233201188c0186bccb16f6fda7851edda7ebe41
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:bf7d5995ce7eaa7b2966fc74e1af8a01bf9b987c254b9384cfa84c7f9c5de39d
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:bb6443801214b1147bf3946c802b257d5f910c2779d054936803fe91df9db6e6
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:312871f03d7067b1adc16486db4069db717cd3b0de2253c03dc66e99b891e17c
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:59e933105f2387f675e1c490c898023494ab29b4d676512c95a92c2bf83f1faf
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:f0e90e5be029c084415f13d45eebba7cc875657d312e168251daf60c35f4eed5
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:267d482080a8413b4b4f6f8d4a722d45ecb4910aab48dc7330d20b0f711fd2cc
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:b8a417f4f08eb3d7ce1589f3fbbf3ad84c03385541009bcfea5848efef3e63e7
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:58c15e710a9661f87708c1a997fd5c57f49cb3090790d48a5e84bf74588b4704
