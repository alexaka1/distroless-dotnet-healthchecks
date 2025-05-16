FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:14529413f5bcd9f11d3fb230abe5bcc6118ca27cc3a3d3ee042dc36081a9569f
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:b1eef9a8b93c632a94eb03fa3ea6e4b03e211c3dd59c9495372ee846868f06b2
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:bd4288d187eac2d9753e4623e0466b9ceec2b340254a640858d3ebb1b25afbac
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:319219ebf1f2ad48850bc5e999b242b29f9981981aa3209ded739e02e044a301
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:da60adc315db0f7ea93fda45812e9262d971d9657fc3337cc2eae750bd155223
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:7f1feabd1442d733f563b6ac0797a4fa1c795f99c60ee734c172f7c7c9f82b25
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:214cc8c8d39f760413acd25cdbc93a82cdb53a4279a84f9b56c8a6d044629fc5
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:2ebfec5714c5f7b67cbedc585ac93ea24ef595b2ca259bee8f8f77b60f26c0b3
