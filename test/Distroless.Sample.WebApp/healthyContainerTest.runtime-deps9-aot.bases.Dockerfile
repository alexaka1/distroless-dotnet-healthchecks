FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:1ad109a88cb2b559ca0c264a945f713bc6a03c78eab68cfb95c360ecf2cf0997
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:770b52a6e37b5a834bcf1681188f30b19fd2bee4020b7d1a16b9c3fbc3c162d3
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:c03b48d53da8f6ba5ad1489892381a15e867f470c425d3254af74bb0fc23c8e1
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:345a80460dd821868496120c98920f73079d25440abae0a7b9bf90e423cea583
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:2de5eae2a1ed9dd1497a2c6cf577fbb9dccd28aef873c409fe76192f9e24f7ae
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:0da76314f44452ebe1265c8c9342ce1dea08468366e8618ca947a15b45735b17
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fc8438856878592f2d4071ab708f87f7605b09b6cb0fc52898a697842fd14128
