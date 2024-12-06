# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:2a819eaae9d7ea03dc4c17f7f7f04d5733bea9302f47cfbaa94338c2bd37a751
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:bc566d238c2953e12588f9ae98171caff30c966a4ae78398a55589e7b0cdec8a
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:5cc8734767c61b1ba4c0a98362ab3bf62860aec79510eaa230a5e8f0b553209d
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:1ee542ce320d7063d204926619f4e58e17386e5058d914c268325262575fd64b
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:f50b13c931ecef4538f75f98b417947085ec03c697a4df167306ff30ff81e43f
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:aea932dda9523d7fb1034e02b5b9b2b715be0569eee25c796abe0f3415cc87ac
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:b63966fb8e5b962e44ba4fff4709ddbeffaa30361e0c0828beb7774193055e94
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:62967ea21e8d308f0f3631a92aa5118b886e72ffffcd691fce3d47e2a0389e5a
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:8b38e8c105a7c5161c4f1d7b37c4eb767e4793f99f9fdb756b72d1e869e1c5cc
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:6949378271975ac15a5653345b195f6c2c6c8bca9f13884e3f306eed0b958e47
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:0769426fce3905c0b18bd2500e8235423677e4885d49e4101a4f39f86fa7badd
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:bcc2f5fb6cdbaa5b13d3d156e8cebbfde290498e4675607db1f2fca57d24c017
