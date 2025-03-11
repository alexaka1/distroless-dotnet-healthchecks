# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:bfb1f49896947cc4c565acc7a0e41a08bbda0b658bafa92a8f17a95e6337cc88
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:f88e71449febb875418a7cecbaab5443f5aa2d1deecef744a3cb8f70c2d7971c
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:1aa48911924287ed8fb1e0dd4dce556ce8107114b6d8b17ee4fb0922e150085e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:951bad4da1ffd567d2f21d7d6007a6dbae8eb42b4ae8123f41e2b2c53022e6e8
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:ed15d556ef2c4bde42e1500a05948abd5d6703526434b2734ce11b782d58a796
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:0b4b7163e1002380404d5e917058bf2de024db7ed245dafe4aa9cd512195af17
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:ffab26d78c380caf844b922f6b467776f035d1f489d24f872e2871648e89d266
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:741b6e327a42d1c4626966fac9dcd3286e04acc92c83c7b6a9d5ad7bb8820cc1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:27d7a1a34895de356cf84e0cf628022d668b89b50da9a0e43309745492ed6433
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:c76b1a4e5cc0e0e4dba644d41ec8a3c2abf687d3ed5ebb07687dc9ff936b12b4
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:59165e24988b729e6e32096805659453c1632fce581bd0072540be3babbadaac
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:3a189b9763698146df80d5bb942144a3bae4b2eadaa35990db8582bc4bb0b21f
