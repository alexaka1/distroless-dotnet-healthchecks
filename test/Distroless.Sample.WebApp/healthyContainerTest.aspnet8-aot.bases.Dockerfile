FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:9461e0688e9141bd312da7afef640bb551529ad70511209509b5b9d387309d4b
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:4be5b59e87600daa72676824d1ee70ffea219c494ad9c451b6aab37c5c6e5fcb
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:440fcf7393169e07526df19360628c424a95c435d1beaf70a53048387398e79f
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:9b112da109fcecab8b16c67d1727692a180eece741b7e1901c4447b06ac246ca
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:ad0dfa1dcb85be067dd3e8e9c06eeeda6dff82fd6f4c7102b368b19deedba448
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:12b936cdecde8e26fed9e408a7bc3f13f42de8f989279786b353ac6266653987
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:8dc45d520413b8ec3d51b9ac7600f1643c09675cb6711015d56c923a3dcad22f
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:700d7c1355d31913d97ca288b110d705746e8354573726353ce561045d65e78e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:dafa3415626ef1beb46bcfc1f4cf3232c116d77797fce279136da34d5af89913
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:575fb6a96abf526e8c406338c50adc0e6d83f24c7ef9abfc8884d780a5ef3ce2
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:a9de402822b17a27b15f9c2680a3b4b5c6fe8e03d76b99b035d888a310166b41
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:f3d409a72f0382021d023810eea337e06ab41561b622e27451f91727d040ea36
