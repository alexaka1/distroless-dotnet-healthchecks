FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:9461e0688e9141bd312da7afef640bb551529ad70511209509b5b9d387309d4b
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:d1f7c5f0ef897b62d8580f5a51dbc9add024c273d06b67ff28580c882e9ff672
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:440fcf7393169e07526df19360628c424a95c435d1beaf70a53048387398e79f
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:8786e9c0cfb53e1e7de411ad92991bf709e6ad4678e702c98d57bf610d5b4f43
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:ad0dfa1dcb85be067dd3e8e9c06eeeda6dff82fd6f4c7102b368b19deedba448
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:079abcc7e1d7a0372df927fd688b68f50c0209104d4466e8f50d1d48b616e05a
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:8dc45d520413b8ec3d51b9ac7600f1643c09675cb6711015d56c923a3dcad22f
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:700d7c1355d31913d97ca288b110d705746e8354573726353ce561045d65e78e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:dafa3415626ef1beb46bcfc1f4cf3232c116d77797fce279136da34d5af89913
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:8c97eb8c23bfb090ebab71e056ee3cd78780ff901d362b34709ef8414c109565
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:6624f73a4e910329b5dfecf4b0ef59d517f9cf83b5d41a96234e65a7c932488e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:b1301736776f0b677900432472c321cba893430aaa30aa1f54f07610a6c231ff
