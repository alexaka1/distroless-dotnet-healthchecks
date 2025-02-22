# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:da09ba013a4ceb463e17b77c821acdd81d17f26384227340a31690d3bf0044bc
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:c13c57f9c745054294831602545c83cd97ee2718c5408e04df9572a3f06869ac
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:b2fde989fa66631ee0d21c0658a75b304eb3c8ccd1a88a0675bb1fac5af41317
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:a3120b72a2f7f22f71e4ab2a8dbc814ccebdff21b2bf018e96427fb4e7eb50c8
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:2a384c45389c370cbdfdbdfd388b63aa089d57e355d0a354a127ab3f56c72055
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:f68c2c1ba4c1b1a2a8309e11931b45de248e91eeafb75870ef888fe544e433b9
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:efb5521076d5bb8df15a07cfda7fc0a865f62e49b9ea58abb4805999628730a9
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:741b6e327a42d1c4626966fac9dcd3286e04acc92c83c7b6a9d5ad7bb8820cc1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:27d7a1a34895de356cf84e0cf628022d668b89b50da9a0e43309745492ed6433
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:c76b1a4e5cc0e0e4dba644d41ec8a3c2abf687d3ed5ebb07687dc9ff936b12b4
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:59165e24988b729e6e32096805659453c1632fce581bd0072540be3babbadaac
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:3a189b9763698146df80d5bb942144a3bae4b2eadaa35990db8582bc4bb0b21f
