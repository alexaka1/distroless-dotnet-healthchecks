FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:522de1109906d3f009665f15446820dce15a57ca8e0a7e834f4fb57dbaf89e63
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:f74d33b8331ab500a6442a0e12e20027f9b6186852628aaf7e529e63c5c9b3ee
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a863e5cbef3e2c7e13b4f24c42588400c971f043a72854e2b99865bf8db3fc4b
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:3daf259db64b0eb0bc879ea7ec9b383d79e79d38628d578f61115ca065d01116
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:f156489141cf6cc616713eb2d80ef7f6c4b3d6a475c6cb3bd5ca4f25ee4dee1c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:f226c64705e00f85c5675c6c54e20eab3fad1d21af6dcb3e2b779bb0f88d5f39
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:9e10f4cf51a42024d9e818534ed64370b7518bb1ee4fcc153191d0031e8b988d
