# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:1c73afa09b10d05faec4520894b1d155e61ef52d151e84e4bc3ef4ae0eda8ab6
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:bc566d238c2953e12588f9ae98171caff30c966a4ae78398a55589e7b0cdec8a
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:5cc8734767c61b1ba4c0a98362ab3bf62860aec79510eaa230a5e8f0b553209d
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:1ee542ce320d7063d204926619f4e58e17386e5058d914c268325262575fd64b
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:f50b13c931ecef4538f75f98b417947085ec03c697a4df167306ff30ff81e43f
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:caed409c05c10d3b8ca7c0c9931102eb2d656ee61543aaa72046c86a0c4bd646
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:59b776e4385a68ac7095f90e9902614032514360de5388c5170d130fb5303882
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:f82e39de65caae890087ade5090e01e0cd7d191f9d5aaa1f7f46d737db3f5514
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:ca310b29ce9f357db328f65de5557d1f1aabe14f5fc032bfbf4013a67ad3cf48
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:e0e681c13d6e2cd052a4b783eddde337f6e6d8e28537852a5284b8a1ed84d8f0
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:d2d373aecddac08733b7c432f13889c725fcefbd96905804bd461a247dda1e3a
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:85574d6f90da7d483f3b4e17bc92d0f7984aa07a766589f9a6e61e279616289a
