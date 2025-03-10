FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:e223bd5d93b3042215c7aed59568933631121f7ff4f5268a5092ab54a7e20136
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:fbc033668caa668596d1f31fe9b704038f84db73c52692f70f7bd4bf2588c7df
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:7b7d35b1c6d8daa4c39b4246e918e32ed7ccadfd64ecbb4887a981c1f5ecc2f5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:04ac6a0733e4dc85563a9cccdbe82bb720d273fe86c34b05fcd59eb32caafc2f
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:a01f7377ab015385c0eff9b5c74969fce652d12fdd9b46842b57fa8943897466
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:fadfd4fcb43a616ef318a8e811a0cf750baffe8058047a1a3f68c1b7c3cf66ef
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:cd29fb32f744c73bfc578502982a225cd39aa9ba34f75ae043a7f56209e7bf18
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:82cb6ce9eb3f6c7c7580cd7e6a002a181533ef03e4c68ba25bc028f91d13574b
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:7aedab6cab643038f71ebd1faf7bc1102fc68581885977ca653837f1df0e9f86
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:30b934ac6981fa947ad941dcd6baa431bb60b2baefc931a03212b3f4d6481633
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:5dec026a5eb1af09479dfbc1097ef9af6b27bca063539c89b6b1ead9a0e64f68
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:56775258bf6ee961c88ecd7427d015c10b6c479e966a5b321689017e3b8d8576
