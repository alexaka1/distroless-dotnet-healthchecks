FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:587c1dd115e4d6707ff656d30ace5da9f49cec48e627a40bbe5d5b249adc3549
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:a3e481cad72cbd32a19ba88142fd010149b5e17eb0d6f11c6ce585210fd86da1
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:4c8172deed502648190c5286429ed83ae7bf6be63e7ec94e54a268f47f29e77c
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:3565b575027d981df9f4c72b5d913f19449e2d6ed4ace3874ba5a04b1b08df79
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:7a3605f2bf89be39788648818974d22b4cbb12694231eb1bfc94060717906ace
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:d0d9a82cb067919299f7ac6edf71e5d6ec0d8cd8ac1b02bcd751e473b6868b62
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:8dc45d520413b8ec3d51b9ac7600f1643c09675cb6711015d56c923a3dcad22f
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:700d7c1355d31913d97ca288b110d705746e8354573726353ce561045d65e78e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:dafa3415626ef1beb46bcfc1f4cf3232c116d77797fce279136da34d5af89913
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:575fb6a96abf526e8c406338c50adc0e6d83f24c7ef9abfc8884d780a5ef3ce2
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:a9de402822b17a27b15f9c2680a3b4b5c6fe8e03d76b99b035d888a310166b41
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:f3d409a72f0382021d023810eea337e06ab41561b622e27451f91727d040ea36
