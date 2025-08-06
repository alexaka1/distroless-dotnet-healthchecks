# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:46c6d3e066318a57867033f7d15cf8e50e86c7a8c5d22cf2d1fa818147a66aba
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:a91cab18ff3e3d29aa7142b403baf7eee8353de3eb5a1dbb3f7a7f0d25c03f6f
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:cd1e4b1281080aaf460dc6d65dd567d731ed1412d8ee8b4eb93cbe749197b6e6
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:82d248ad91f275f08f7adb666ba2b3a53a1a7f6413033b9b854c7fe60f481113
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:920c189adefe6915e9be4bfd077449c3776e4de65d940b52cb9f3099e4e9d3a7
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:88a5a9c68ffb05526d1887578439ebf984a11f91f569e17a16c574c3d3f8e323
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:4681b0fc76c2cdabd53b90d4f8768ff413f19b50a92cbae9613eb2831b179593
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:27942d408c961edbed5acfee81de4fa59ade5e8925d131aed93aedee8323fbea
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:23f642b7b712710c378ba9402926090a303ceabb462777eff8b374c6c4604bdb
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:12851c7e68b03aa3a565b0d1dc820536c93968bef409348d15553613b4e5afa0
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:182183e7b7e29f0ad642c94276b843166f5113235ad113825abb623ab72b0dad
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:37d5224eeb8314680f32647978cd3dff07e0c628d4fb92216ca05b4b869e65f3
