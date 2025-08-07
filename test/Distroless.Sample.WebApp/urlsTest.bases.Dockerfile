# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:3b20fdfc10d1809facd99928ef58326081b5e191b94cdb7f96dbd31212703b98
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:dfcc6bf6005407f78b671fcce5c4eaa3498fc670a1eb5a1aca5aa16886c66a6d
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:6effc3f59e5dd80acde6cfa1a3e030bc98553f29d77bd2b27359b204ef4a0a41
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a7242461161c037e1a02397f8374e777000e678d19325046afc0108c58dde882
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:28fe26899cbb8a9119423e84820f1e8f275d871e89e6bc6a7b92e5036b6e1ad8
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:f41081cc1d48ef4bf47a72bf7ee76092fcf015c8f1adebb52a542c48f84d11da
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:a851adbee5172e83300290b13cdf855f0c28064c550189baf01196c916a1a200
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:069a2769780934115b4c002c26b568cd61f3cc47f2f42cdc6d3d45cd9e0be0d8
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:7cc02a114c3329d4d6f27ea5ecfcb2723a96c207389f5b86d0182edbd973bfe5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:b5505a0d7399463b292f2d896915e3c989f100d9dfd153ec0396fd7b7b5f1cf2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:360fe5aac547e9982bc2a8b866b9262bf84a90b3db513fcdf4d3178a88ae7cf6
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:189b7094786620dbb3a0253e67751ffaeadb7b4a2d6d0c6cc16c16e10e425b94
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:61a4da353fe60ebc464325cd359d9f4a9314a97f62c842937a91c77646e559d2
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
