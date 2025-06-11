FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:0fc9f465b64e2a217d8d896b0f62fcb3aea61907601e31b53515b5ffa80beb2f
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:dfe150a210bf526e5fda5c338d34b433f5b59a413dffb1ba6db3471d0b8d9768
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:5f53e5d39e668ebef7d6d97cc07bd81c4d7e04db61d23d6a557e37c6b1012e4a
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:88065b22f4637ebad860b682c717eef81bfb430eb009acc5c433cc89db88a250
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:2de5eae2a1ed9dd1497a2c6cf577fbb9dccd28aef873c409fe76192f9e24f7ae
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:0da76314f44452ebe1265c8c9342ce1dea08468366e8618ca947a15b45735b17
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fc8438856878592f2d4071ab708f87f7605b09b6cb0fc52898a697842fd14128
