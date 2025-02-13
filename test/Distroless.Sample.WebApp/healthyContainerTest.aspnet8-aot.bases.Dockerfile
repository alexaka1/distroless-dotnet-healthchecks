FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:beeb35a97731a382e468feb116174e930b4b67910bafe4fecfea2eccd2bcac10
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:fbc033668caa668596d1f31fe9b704038f84db73c52692f70f7bd4bf2588c7df
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:7b7d35b1c6d8daa4c39b4246e918e32ed7ccadfd64ecbb4887a981c1f5ecc2f5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:04ac6a0733e4dc85563a9cccdbe82bb720d273fe86c34b05fcd59eb32caafc2f
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:a01f7377ab015385c0eff9b5c74969fce652d12fdd9b46842b57fa8943897466
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:fadfd4fcb43a616ef318a8e811a0cf750baffe8058047a1a3f68c1b7c3cf66ef
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:09ba36d31fef9a4e6bce9a2b1968177a2315f2e4f08533ad137b454e3779383d
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:1895c0e1d31368cb6a7648703e2b1343e32ab98fa63e52cb6590e9b5a02f34dc
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:4c33a7de46f4245bbff1c34f97a97f62ce93a889f48727009e181561503c4c13
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:30b934ac6981fa947ad941dcd6baa431bb60b2baefc931a03212b3f4d6481633
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:5dec026a5eb1af09479dfbc1097ef9af6b27bca063539c89b6b1ead9a0e64f68
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:56775258bf6ee961c88ecd7427d015c10b6c479e966a5b321689017e3b8d8576
