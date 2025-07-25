# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:9686b7359054217f18e6ac7f19556c0db87a396dbb9551c9d7cfa8cd9bc2af82
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:552bca3d0602f81918fd223c44eac3fa1174e740f065705789c8a1985d9e9abd
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:0a33e8d53cb522049da44dc28ea5697b6af3ceade2dbb69888596793657df52c
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:7df7fe6d2a888cbf11d5db9de1debe672f1d34b58bc86a1a6e2668a56bd57e36
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:8f0a7fa0b51b7ec4872707223a3f03fe82a4ce1bedb085fbcdc25b54de0081e7
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:26dd448f923831a887ff041c21281aa5eca9f71b07c1379c057ce515e976d0ac
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:728837f38b8c28d6ddfaa55fcce09e8bed4d56c1a3b10c716d5145edb50da14b
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:d452768bb0ca6c01daa42d44fce6129a54e6c612d180fcb565a89658b1ebe9a3
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:6b980da5fbd508149cb0624d081c64f699805701e4267907257ccef2f2bc632d
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:12851c7e68b03aa3a565b0d1dc820536c93968bef409348d15553613b4e5afa0
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:182183e7b7e29f0ad642c94276b843166f5113235ad113825abb623ab72b0dad
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:37d5224eeb8314680f32647978cd3dff07e0c628d4fb92216ca05b4b869e65f3
