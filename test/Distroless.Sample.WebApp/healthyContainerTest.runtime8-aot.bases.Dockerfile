# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:bf3e1fb9629c8bf4fa2a17581cfb57d68bacd328fe89df194c8e8e0ab5bd0597
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:3dcccfc18b1a0d24dfcba6b527a792c19eab6db74655a05399736270d7ee0c7a
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:b2fde989fa66631ee0d21c0658a75b304eb3c8ccd1a88a0675bb1fac5af41317
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:8c509f4f096186b5883fb81cea36c61f8bce626003485b79632e2a5381618be5
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:2a384c45389c370cbdfdbdfd388b63aa089d57e355d0a354a127ab3f56c72055
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:9f76e4a69723d44e8c0faafa3bfb03d36aad584a10bb4ccc6bb0a15a1e794d1d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:37690e56cd208678bf209fecaae0fcd5667534f3cc27b2cd8d84140e911ae954
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:e58ee1d4b2cbb5264e2261f7ebe94d469a4488a55f5fd6864eafc7f56ac3bcb2
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:ab7e8fc8c009b71730c0a7473c1bbab89418134b5ae0bdad3af760e8f318f4d9
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:841e9459b61716e9c84a5d67d1f0c441f739b4b7c8aa6cf756547f662cc3cce4
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:991b2142af0bf149a8c6585abd266f908b644d6e6421e247ed4278160fd578aa
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:82cac9f38a75ad5dd5dafac2faab2b83509cf6d5195ff4cdcbd3f6e19f3b6b33
