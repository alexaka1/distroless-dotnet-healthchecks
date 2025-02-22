FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:adc89f84d53514cdc17677f3334775879d80d08ac8997a4b3fba8d20a6d6de9d
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:9e0ad7347e9838e862e4146d8d7c9ffb4c2b9efc915e6d52297ef137a3775925
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:ecaecad2614c3c946727a3fc22ef829771ce6527e9d82c639080771c2f67ea0a
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:a34151d2b44b2d0fd4a7c54c727613c0b00076bfc9a6a261cddc691ac84b3160
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:3ef42889f900a15049de61a5d0812581ffa9b4b24b1849b41c416ee39ab79ac3
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:06c14f258800c2b40810d50bc01b2aedb37a704d3b2d6560802d77bf8d9cb64d
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:ea0aa5e2348d10592c814fdc24a0745091efed97a43fede8253bd492f4fa65d4
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:7a614d8f9c1cdb0b59777bfa4743125413707ca213c8c2f91d9d170377f4679a
