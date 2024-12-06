# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:74ae244aa186678055533e7396a5b037c43c814e68e993f63b447852b2ed9c3e
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:c1101c15b76b5f7588d9ca1ea5067654b73718683309423a5623f03165ab016f
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:0c5702732dbe07e0800f7aa5a8eec80bdb49361a03cec0ab48917db77f275bba
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:6c110966a61045c43c33e8015874d457d2a86accab81b308df9e7bed52faf2e8
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:c5d6502d9f2e3db5cf73d06347ab6b79b3c12b208662c2598685a517634e5379
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:481a1ca563f99886a40f4744fc74bb14c0008ea90307ce26d7294a226370ebac
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:b63966fb8e5b962e44ba4fff4709ddbeffaa30361e0c0828beb7774193055e94
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:62967ea21e8d308f0f3631a92aa5118b886e72ffffcd691fce3d47e2a0389e5a
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:8b38e8c105a7c5161c4f1d7b37c4eb767e4793f99f9fdb756b72d1e869e1c5cc
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:6949378271975ac15a5653345b195f6c2c6c8bca9f13884e3f306eed0b958e47
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:0769426fce3905c0b18bd2500e8235423677e4885d49e4101a4f39f86fa7badd
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:bcc2f5fb6cdbaa5b13d3d156e8cebbfde290498e4675607db1f2fca57d24c017
