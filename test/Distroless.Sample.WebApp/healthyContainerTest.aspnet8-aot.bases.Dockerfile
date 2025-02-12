FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:beeb35a97731a382e468feb116174e930b4b67910bafe4fecfea2eccd2bcac10
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:fbc033668caa668596d1f31fe9b704038f84db73c52692f70f7bd4bf2588c7df
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:7b7d35b1c6d8daa4c39b4246e918e32ed7ccadfd64ecbb4887a981c1f5ecc2f5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:04ac6a0733e4dc85563a9cccdbe82bb720d273fe86c34b05fcd59eb32caafc2f
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:a01f7377ab015385c0eff9b5c74969fce652d12fdd9b46842b57fa8943897466
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:fadfd4fcb43a616ef318a8e811a0cf750baffe8058047a1a3f68c1b7c3cf66ef
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:b75bb3cfea788f4a9272e235de5d39bdf68985815c73349aa7e56acb6edd5094
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:6734cc0edd37874a953bb2729aa511ffab8b9ef48b23f405cfd68eefc7b03db9
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:89dc64af665059ada557889f35216f57765262589619201a29c9e26e5d276afd
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:7d1e5a405ff9af287b705164a0b24af7f8e18e88f3724e1150ce2bbeddfa318e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:9ba13a5c9ba6a5383c2a5be4af74b4666b2cacddc8c19fdc256abeb0c505d9f7
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:5fd7d74b3f61046bec70acdbd84bf086f0000dcfe37c63e2d1982b65510cf1ca
