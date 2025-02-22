FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:beeb35a97731a382e468feb116174e930b4b67910bafe4fecfea2eccd2bcac10
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:fbc033668caa668596d1f31fe9b704038f84db73c52692f70f7bd4bf2588c7df
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:7b7d35b1c6d8daa4c39b4246e918e32ed7ccadfd64ecbb4887a981c1f5ecc2f5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:04ac6a0733e4dc85563a9cccdbe82bb720d273fe86c34b05fcd59eb32caafc2f
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:a01f7377ab015385c0eff9b5c74969fce652d12fdd9b46842b57fa8943897466
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:fadfd4fcb43a616ef318a8e811a0cf750baffe8058047a1a3f68c1b7c3cf66ef
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:3ef42889f900a15049de61a5d0812581ffa9b4b24b1849b41c416ee39ab79ac3
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:06c14f258800c2b40810d50bc01b2aedb37a704d3b2d6560802d77bf8d9cb64d
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:7aedab6cab643038f71ebd1faf7bc1102fc68581885977ca653837f1df0e9f86
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:ea0aa5e2348d10592c814fdc24a0745091efed97a43fede8253bd492f4fa65d4
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:5dec026a5eb1af09479dfbc1097ef9af6b27bca063539c89b6b1ead9a0e64f68
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:7a614d8f9c1cdb0b59777bfa4743125413707ca213c8c2f91d9d170377f4679a
