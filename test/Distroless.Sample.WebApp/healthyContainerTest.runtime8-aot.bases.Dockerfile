# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:89669b04fa9d98dc2f4519184af3b953e464c4f3ba0da1c3c42d822aa8b68def
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:3dcccfc18b1a0d24dfcba6b527a792c19eab6db74655a05399736270d7ee0c7a
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:b2fde989fa66631ee0d21c0658a75b304eb3c8ccd1a88a0675bb1fac5af41317
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:8c509f4f096186b5883fb81cea36c61f8bce626003485b79632e2a5381618be5
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:2a384c45389c370cbdfdbdfd388b63aa089d57e355d0a354a127ab3f56c72055
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:9f76e4a69723d44e8c0faafa3bfb03d36aad584a10bb4ccc6bb0a15a1e794d1d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:ffab26d78c380caf844b922f6b467776f035d1f489d24f872e2871648e89d266
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:741b6e327a42d1c4626966fac9dcd3286e04acc92c83c7b6a9d5ad7bb8820cc1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:27d7a1a34895de356cf84e0cf628022d668b89b50da9a0e43309745492ed6433
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:c76b1a4e5cc0e0e4dba644d41ec8a3c2abf687d3ed5ebb07687dc9ff936b12b4
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:59165e24988b729e6e32096805659453c1632fce581bd0072540be3babbadaac
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:3a189b9763698146df80d5bb942144a3bae4b2eadaa35990db8582bc4bb0b21f
