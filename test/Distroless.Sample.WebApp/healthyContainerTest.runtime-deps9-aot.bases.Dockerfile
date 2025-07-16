FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:0fc9f465b64e2a217d8d896b0f62fcb3aea61907601e31b53515b5ffa80beb2f
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:dfe150a210bf526e5fda5c338d34b433f5b59a413dffb1ba6db3471d0b8d9768
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:5f53e5d39e668ebef7d6d97cc07bd81c4d7e04db61d23d6a557e37c6b1012e4a
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:88065b22f4637ebad860b682c717eef81bfb430eb009acc5c433cc89db88a250
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:f156489141cf6cc616713eb2d80ef7f6c4b3d6a475c6cb3bd5ca4f25ee4dee1c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:f226c64705e00f85c5675c6c54e20eab3fad1d21af6dcb3e2b779bb0f88d5f39
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:9e10f4cf51a42024d9e818534ed64370b7518bb1ee4fcc153191d0031e8b988d
