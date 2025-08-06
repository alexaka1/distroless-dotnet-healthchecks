# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:46c6d3e066318a57867033f7d15cf8e50e86c7a8c5d22cf2d1fa818147a66aba
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:a91cab18ff3e3d29aa7142b403baf7eee8353de3eb5a1dbb3f7a7f0d25c03f6f
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:cd1e4b1281080aaf460dc6d65dd567d731ed1412d8ee8b4eb93cbe749197b6e6
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:82d248ad91f275f08f7adb666ba2b3a53a1a7f6413033b9b854c7fe60f481113
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:920c189adefe6915e9be4bfd077449c3776e4de65d940b52cb9f3099e4e9d3a7
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:88a5a9c68ffb05526d1887578439ebf984a11f91f569e17a16c574c3d3f8e323
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:d29322c624edbe18e417f8a37601e9c66468e875890ecd1b889f679e5e56d1ec
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:91e9b3683dc122d9251fe8aed6276a09330d51db07672c8de1b4f903f7fd6444
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:b8d890afaa70c5f34cb0c06e61478ad4d169465a56f23bac2ea022840df27f91
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:183ee8bb60f5b72c1ae748c4451ef90e41946cc346a774828217a14d33224744
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:48e83894dfef93d91566de4eddf8d253e0cca99a28c4cb946857c8f5c42cea9d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:f6adb4756ddf19ed575135e0b08e9f7d8bd12e9b5a9af5c9ff652b1127bef11d
