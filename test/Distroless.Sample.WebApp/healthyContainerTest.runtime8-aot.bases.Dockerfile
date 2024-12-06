# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:b7afeeb945d9cfaf215e8262c5e17ffcba4e4397b7a6fb37610d4c3a30b85906
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:d5c0e8bfef9e0b506a0129af076af2677c51d02f73c5995e54cd33e8ce3cc6e0
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:5cc8734767c61b1ba4c0a98362ab3bf62860aec79510eaa230a5e8f0b553209d
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:29943341fb6216992c659c352e716c18f8dd973b1575bfda709cf314e60f2d2e
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:f50b13c931ecef4538f75f98b417947085ec03c697a4df167306ff30ff81e43f
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:5eabdbfa69b1abfa488fb35355c155cfd953fc49a24a0d2943f9f95d3a192d5b
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:b63966fb8e5b962e44ba4fff4709ddbeffaa30361e0c0828beb7774193055e94
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:62967ea21e8d308f0f3631a92aa5118b886e72ffffcd691fce3d47e2a0389e5a
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:8b38e8c105a7c5161c4f1d7b37c4eb767e4793f99f9fdb756b72d1e869e1c5cc
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:6949378271975ac15a5653345b195f6c2c6c8bca9f13884e3f306eed0b958e47
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:0769426fce3905c0b18bd2500e8235423677e4885d49e4101a4f39f86fa7badd
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:bcc2f5fb6cdbaa5b13d3d156e8cebbfde290498e4675607db1f2fca57d24c017
