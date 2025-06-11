FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:9563e814250fef5dde24cd68916878ef5faa8f993bf99a06db1c947f23217996
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:49cf6a7c26204e42b399f231b39a7ffd67e0d6329132ebfea9b8263f1e793d97
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:83933edfd4089b9dfc6e83809b79409fc224907d0c5b402409b77ec0cb998675
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:b3618af4646e46bc58309de56e7600687d9a39e4cb095e2988ff868e233de586
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:5e33c3ea1a61c80e5255c9bb5fe7af2889561a55022afa6c87e260b76da65ceb
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:c616a16caef885eb90766f8c0917167d88331b77f3befb190147cf5773ddfc9d
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:214cc8c8d39f760413acd25cdbc93a82cdb53a4279a84f9b56c8a6d044629fc5
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:2ac53c184b3fed59f1a88ac9e7151b6a3ebefb6fcc93346d2a23686da4d1dcb4
