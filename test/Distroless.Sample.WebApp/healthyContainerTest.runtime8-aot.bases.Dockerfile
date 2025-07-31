# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:ec05d490f68d7651ea50f097a80b3ecd44f01566e443773f981b01fbb1140872
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:83c6e7b588d97838ad2fc555c6987cd9967cc4fff588fb0784ef6bff40fc7573
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:9555a7bbe0c61ecd382de9c6628434b0ec7f4bf7d45b501c24ff2f6f1332b913
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:7df7fe6d2a888cbf11d5db9de1debe672f1d34b58bc86a1a6e2668a56bd57e36
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:8f0a7fa0b51b7ec4872707223a3f03fe82a4ce1bedb085fbcdc25b54de0081e7
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:26dd448f923831a887ff041c21281aa5eca9f71b07c1379c057ce515e976d0ac
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:4681b0fc76c2cdabd53b90d4f8768ff413f19b50a92cbae9613eb2831b179593
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:27942d408c961edbed5acfee81de4fa59ade5e8925d131aed93aedee8323fbea
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:23f642b7b712710c378ba9402926090a303ceabb462777eff8b374c6c4604bdb
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:12851c7e68b03aa3a565b0d1dc820536c93968bef409348d15553613b4e5afa0
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:182183e7b7e29f0ad642c94276b843166f5113235ad113825abb623ab72b0dad
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:37d5224eeb8314680f32647978cd3dff07e0c628d4fb92216ca05b4b869e65f3
