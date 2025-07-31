FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8f0326065d2cbaef50f3db8e241dd4544ba3fd02e83dedafb9a838952232ceb5
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:d56e7d9e5d19c290c596926788d54a6237fabebc9f0720b7eba9f45e416eec01
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a863e5cbef3e2c7e13b4f24c42588400c971f043a72854e2b99865bf8db3fc4b
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:3daf259db64b0eb0bc879ea7ec9b383d79e79d38628d578f61115ca065d01116
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:069a2769780934115b4c002c26b568cd61f3cc47f2f42cdc6d3d45cd9e0be0d8
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:7cc02a114c3329d4d6f27ea5ecfcb2723a96c207389f5b86d0182edbd973bfe5
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:9e10f4cf51a42024d9e818534ed64370b7518bb1ee4fcc153191d0031e8b988d
