FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:ee983d3c1ecf618b8d101025748b8325f269cff288589485b918cb27d4cb9811
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:92ad466be4636f7ca7db9ed43ebd746127658bd0b69a5ff46dadd58f52b2ec53
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:0eb100b4135630b388acecf0b35c9d974a682fcf4c96d7ef731d814a4a8ea93b
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:d91c6c6dea7a86c608a0610376a9508cf441a656cd8433b804e2ec538c9d32b3
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:ea05e9e840a4b807d3d712eada0b8120347405845c682b5766b141e4d4ec77d0
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:8af88a72b613f9f42727e306c2838296e8d497b2f87c75973f156ffe32bc2424
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:d761617232f15534377fb3889e60a4e36c555e019e6295d8683bbcb08d5302d6
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:ca22a8101f867fc36cbfad9b87872d367d072f2b277e7102800b89aa878d4e30
