FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:d5c0d91bc8fe887684b97d5409056270ed78cd23a5123436e842a8114a64d584
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:c59e7733aac9520785bed2779758ef509b11ab320a8a0ab0494868b0030073de
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:3cede7ca994a4fe47c347fad0720e81dadfd3f5245bec4b5bb5c5d17e0d19167
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:147773733206bf80a4e28adaaa8802bca4fdcef9adb6412e26de9fa248dd7a0a
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:a99864b2e9947ba9553529e0362cad560be5fd9178b88c28fd810d8d9aad55d8
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:43d60d0e46611da2db09abbdaef0f2ea0a77eff68ef003175ffa25eabf67ce93
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:943b1456f87c63ecbf21c61c90597f404ed93ae0cd7fb599b6ddf9b252427d3f
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:5664fd61c05a1e29365fdb31657f3f2c670441526637afbedfbdd91807502f18
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:ba8675504d1c26ddc0953a9f294263a6e043251fa6b9206b873f543950db3c6a
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:17d5a16703bdd39e06f7ce38bf07c8efb9476818e13cb4ff667e120ff5b5074f
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:0c8c14446099d2a3c0ad9d147a59524cc992b6bc135f004ad2203439cc2091de
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:fc3c8997be8a63b74ebdf5a621a7af8785dc55e94b248d5fdfb08ad1e89ba3df
