# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:a1eac44e3a075c56db408ea3612013d752da546e25fd0be87c77ab0e7463e680
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:4686961bbf1efbfb31ec383674ede23947a11cb9eb566e3028726796b4638c9f
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:fbd9a6b8ad63a4813d9a8cc6d05cd89437ca8807a9b217084a38d76087c84272
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:301240025bf84c623c7db49c8481ec4ea19d38ab0c31c8b05450918abe420255
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:8072f768d3dddf30356c53cec9c477d302966b65b23a06cb4318cee4aa217ce8
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:3697595b7a6d72da09a680329e5c8aab42d933191d47f058ed7d84daadf1f409
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:37690e56cd208678bf209fecaae0fcd5667534f3cc27b2cd8d84140e911ae954
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:e58ee1d4b2cbb5264e2261f7ebe94d469a4488a55f5fd6864eafc7f56ac3bcb2
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:ab7e8fc8c009b71730c0a7473c1bbab89418134b5ae0bdad3af760e8f318f4d9
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:841e9459b61716e9c84a5d67d1f0c441f739b4b7c8aa6cf756547f662cc3cce4
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:991b2142af0bf149a8c6585abd266f908b644d6e6421e247ed4278160fd578aa
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:82cac9f38a75ad5dd5dafac2faab2b83509cf6d5195ff4cdcbd3f6e19f3b6b33
