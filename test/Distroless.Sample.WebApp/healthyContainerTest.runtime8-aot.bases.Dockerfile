# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:2a819eaae9d7ea03dc4c17f7f7f04d5733bea9302f47cfbaa94338c2bd37a751
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:bc566d238c2953e12588f9ae98171caff30c966a4ae78398a55589e7b0cdec8a
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:5cc8734767c61b1ba4c0a98362ab3bf62860aec79510eaa230a5e8f0b553209d
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:1ee542ce320d7063d204926619f4e58e17386e5058d914c268325262575fd64b
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:f50b13c931ecef4538f75f98b417947085ec03c697a4df167306ff30ff81e43f
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:aea932dda9523d7fb1034e02b5b9b2b715be0569eee25c796abe0f3415cc87ac
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:2cb6f4a3c1bf44a0cef694816b2c6eeeec9ac2bc79dc1e87b6d6f9fed1b6eb56
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:2ed7eb6b4a2f6a8e2567c5a4779c1f08544088d34ee0bbb1fa0e798fec308fc2
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:3467c0056857a76e41d79464d06ebb803cf152121ab29191e0de99f0111a7ff6
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:b904a5f497ffb71d8e1f3a8e16875115088ceab60b61fd205d88d99b5855d2b3
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:71a1186d4fc087c0b7c35de1eb5eae868910023d3af3158b6c989dee820fdfe6
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:9e02f8ca3b7b695c91075fd09799a4d5aeb27498d6fb5c8cd0af30b885327d2c
