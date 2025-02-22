FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:adc89f84d53514cdc17677f3334775879d80d08ac8997a4b3fba8d20a6d6de9d
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:9e0ad7347e9838e862e4146d8d7c9ffb4c2b9efc915e6d52297ef137a3775925
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:7b7d35b1c6d8daa4c39b4246e918e32ed7ccadfd64ecbb4887a981c1f5ecc2f5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:ecaecad2614c3c946727a3fc22ef829771ce6527e9d82c639080771c2f67ea0a
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:a01f7377ab015385c0eff9b5c74969fce652d12fdd9b46842b57fa8943897466
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:a34151d2b44b2d0fd4a7c54c727613c0b00076bfc9a6a261cddc691ac84b3160
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:4df4a37ae5dfd3902d688328d6897be16e1a07aa111d5aeffbc177c0f65f4891
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:82cb6ce9eb3f6c7c7580cd7e6a002a181533ef03e4c68ba25bc028f91d13574b
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:7aedab6cab643038f71ebd1faf7bc1102fc68581885977ca653837f1df0e9f86
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:30b934ac6981fa947ad941dcd6baa431bb60b2baefc931a03212b3f4d6481633
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:5dec026a5eb1af09479dfbc1097ef9af6b27bca063539c89b6b1ead9a0e64f68
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:56775258bf6ee961c88ecd7427d015c10b6c479e966a5b321689017e3b8d8576
