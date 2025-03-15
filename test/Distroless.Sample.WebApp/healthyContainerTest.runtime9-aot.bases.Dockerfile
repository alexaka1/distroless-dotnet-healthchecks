FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:03fe3b9f932fc9c3d1a76c6a0fecc8e2f1b9ed302deda29f920d81e50c9aad6f
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:92ad466be4636f7ca7db9ed43ebd746127658bd0b69a5ff46dadd58f52b2ec53
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:0eb100b4135630b388acecf0b35c9d974a682fcf4c96d7ef731d814a4a8ea93b
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:d91c6c6dea7a86c608a0610376a9508cf441a656cd8433b804e2ec538c9d32b3
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:ea05e9e840a4b807d3d712eada0b8120347405845c682b5766b141e4d4ec77d0
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:1d2e92959b7fe29b1cc35cc001ac7985300ad2546d56a6a4c2a7fd51f07b02ff
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:4f2e692f305df31b8f2063ab2ab4c426bebee149f8ba012469e36fd7edc2fba6
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:ca22a8101f867fc36cbfad9b87872d367d072f2b277e7102800b89aa878d4e30
