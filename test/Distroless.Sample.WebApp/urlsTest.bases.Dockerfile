# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:46c32f4ec110e2a1868453a3a0689d0e3094dde681774c556e8270c638cd4fc6
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:522de1109906d3f009665f15446820dce15a57ca8e0a7e834f4fb57dbaf89e63
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:f74d33b8331ab500a6442a0e12e20027f9b6186852628aaf7e529e63c5c9b3ee
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a863e5cbef3e2c7e13b4f24c42588400c971f043a72854e2b99865bf8db3fc4b
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:3daf259db64b0eb0bc879ea7ec9b383d79e79d38628d578f61115ca065d01116
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:df542212a7652dcd41e41879798eb9b3764e9450bda23854207cf2a756d5a2c9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:a851adbee5172e83300290b13cdf855f0c28064c550189baf01196c916a1a200
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:f156489141cf6cc616713eb2d80ef7f6c4b3d6a475c6cb3bd5ca4f25ee4dee1c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:f226c64705e00f85c5675c6c54e20eab3fad1d21af6dcb3e2b779bb0f88d5f39
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:9e10f4cf51a42024d9e818534ed64370b7518bb1ee4fcc153191d0031e8b988d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:e846f05f4926838d1a55449ac86a621bd5d7f1a45fc9f706e22e8a552f2c5cd1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:5f13251c18a1207c28e368ca7917ae90abf426691608729dc54c536ddb8db339
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:22b29277c05181d7ccd01bdfa6f54535037eab3fc147c4959401d0665098aa9d
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
