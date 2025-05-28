FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:d067453026c556115c214e81d4f93adaa190487fad6d7ef4b539eab6f8103d2e
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:b1eef9a8b93c632a94eb03fa3ea6e4b03e211c3dd59c9495372ee846868f06b2
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:bd4288d187eac2d9753e4623e0466b9ceec2b340254a640858d3ebb1b25afbac
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:d90954976d20c83ea700311ad2e928a298aae1643b1b35f29880bb50237d0080
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:5e33c3ea1a61c80e5255c9bb5fe7af2889561a55022afa6c87e260b76da65ceb
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:7f1feabd1442d733f563b6ac0797a4fa1c795f99c60ee734c172f7c7c9f82b25
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:214cc8c8d39f760413acd25cdbc93a82cdb53a4279a84f9b56c8a6d044629fc5
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:2ebfec5714c5f7b67cbedc585ac93ea24ef595b2ca259bee8f8f77b60f26c0b3
