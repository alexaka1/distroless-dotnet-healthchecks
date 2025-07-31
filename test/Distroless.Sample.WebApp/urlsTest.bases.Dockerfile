# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:56cb22a358efc6f57848c65291a986007ff030ace5742f69c54bb80d5fccc1ee
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8f0326065d2cbaef50f3db8e241dd4544ba3fd02e83dedafb9a838952232ceb5
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:f74d33b8331ab500a6442a0e12e20027f9b6186852628aaf7e529e63c5c9b3ee
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a863e5cbef3e2c7e13b4f24c42588400c971f043a72854e2b99865bf8db3fc4b
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:3daf259db64b0eb0bc879ea7ec9b383d79e79d38628d578f61115ca065d01116
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:f41081cc1d48ef4bf47a72bf7ee76092fcf015c8f1adebb52a542c48f84d11da
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:a851adbee5172e83300290b13cdf855f0c28064c550189baf01196c916a1a200
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:069a2769780934115b4c002c26b568cd61f3cc47f2f42cdc6d3d45cd9e0be0d8
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:7cc02a114c3329d4d6f27ea5ecfcb2723a96c207389f5b86d0182edbd973bfe5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:9e10f4cf51a42024d9e818534ed64370b7518bb1ee4fcc153191d0031e8b988d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:7bb9ab71e5b4335bf56aba254411378edc217ddc4ed37dee99d36ba7479f6d73
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:5f13251c18a1207c28e368ca7917ae90abf426691608729dc54c536ddb8db339
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:22b29277c05181d7ccd01bdfa6f54535037eab3fc147c4959401d0665098aa9d
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
