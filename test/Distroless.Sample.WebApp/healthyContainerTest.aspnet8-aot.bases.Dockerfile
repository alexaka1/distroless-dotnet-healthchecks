FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:7429d9e87f20dab5a52b8c5365a83e8b42087ed51d9d133255101c3039773d5b
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:88a7df583b0076289dcc67b1c863c27cf9e1f7e80805eb979f8605a73c51ea81
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:5bd6709a6afbf26129783374b57a2e82c05a9f795df34a4576f8910eae2aa64c
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:3565b575027d981df9f4c72b5d913f19449e2d6ed4ace3874ba5a04b1b08df79
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:7a3605f2bf89be39788648818974d22b4cbb12694231eb1bfc94060717906ace
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:d0d9a82cb067919299f7ac6edf71e5d6ec0d8cd8ac1b02bcd751e473b6868b62
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:3b6a0d89ef2f4ee712ac53c80f9e2e89ae5b182f4345ecb5a9063833230b7c8c
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:6734cc0edd37874a953bb2729aa511ffab8b9ef48b23f405cfd68eefc7b03db9
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:89dc64af665059ada557889f35216f57765262589619201a29c9e26e5d276afd
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:7d1e5a405ff9af287b705164a0b24af7f8e18e88f3724e1150ce2bbeddfa318e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:9ba13a5c9ba6a5383c2a5be4af74b4666b2cacddc8c19fdc256abeb0c505d9f7
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:5fd7d74b3f61046bec70acdbd84bf086f0000dcfe37c63e2d1982b65510cf1ca
