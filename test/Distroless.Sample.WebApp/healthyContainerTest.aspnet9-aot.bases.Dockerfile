FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:adc89f84d53514cdc17677f3334775879d80d08ac8997a4b3fba8d20a6d6de9d
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:9e0ad7347e9838e862e4146d8d7c9ffb4c2b9efc915e6d52297ef137a3775925
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:ecaecad2614c3c946727a3fc22ef829771ce6527e9d82c639080771c2f67ea0a
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:a34151d2b44b2d0fd4a7c54c727613c0b00076bfc9a6a261cddc691ac84b3160
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:c7228ce6e099cbbc351118a9bc3157460aa6f3237f00cdb20c2904ebe7746d25
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:5b69dee7b9176378fb773d35eef6d2a2f4a04890f5e1d965c8d1265153aba655
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:7badc03b0218059950b6ad86344a3d3ae41870b34da690b413f8530739c91d19
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:e1770a13506e8f803fee00bd163e9cbfb4e5866877b804507b76d02ff02c2def
