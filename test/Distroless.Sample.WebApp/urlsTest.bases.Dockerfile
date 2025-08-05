# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:56cb22a358efc6f57848c65291a986007ff030ace5742f69c54bb80d5fccc1ee
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8f0326065d2cbaef50f3db8e241dd4544ba3fd02e83dedafb9a838952232ceb5
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:d56e7d9e5d19c290c596926788d54a6237fabebc9f0720b7eba9f45e416eec01
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a863e5cbef3e2c7e13b4f24c42588400c971f043a72854e2b99865bf8db3fc4b
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:3daf259db64b0eb0bc879ea7ec9b383d79e79d38628d578f61115ca065d01116
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:f41081cc1d48ef4bf47a72bf7ee76092fcf015c8f1adebb52a542c48f84d11da
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:a851adbee5172e83300290b13cdf855f0c28064c550189baf01196c916a1a200
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:069a2769780934115b4c002c26b568cd61f3cc47f2f42cdc6d3d45cd9e0be0d8
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:7cc02a114c3329d4d6f27ea5ecfcb2723a96c207389f5b86d0182edbd973bfe5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:9e10f4cf51a42024d9e818534ed64370b7518bb1ee4fcc153191d0031e8b988d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:360fe5aac547e9982bc2a8b866b9262bf84a90b3db513fcdf4d3178a88ae7cf6
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:189b7094786620dbb3a0253e67751ffaeadb7b4a2d6d0c6cc16c16e10e425b94
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:5163c09c15f1e6c2d690475c5e0bd997202e091a724792ae70951eea0415518e
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
