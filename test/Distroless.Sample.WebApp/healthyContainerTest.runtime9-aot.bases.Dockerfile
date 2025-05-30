FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:d067453026c556115c214e81d4f93adaa190487fad6d7ef4b539eab6f8103d2e
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:5c930c523661c23d98d224ba9e6cfa587be9f3709d49ed3d102366a5a8321dd0
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:bd4288d187eac2d9753e4623e0466b9ceec2b340254a640858d3ebb1b25afbac
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:d90954976d20c83ea700311ad2e928a298aae1643b1b35f29880bb50237d0080
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:5e33c3ea1a61c80e5255c9bb5fe7af2889561a55022afa6c87e260b76da65ceb
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:c616a16caef885eb90766f8c0917167d88331b77f3befb190147cf5773ddfc9d
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:214cc8c8d39f760413acd25cdbc93a82cdb53a4279a84f9b56c8a6d044629fc5
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:2ac53c184b3fed59f1a88ac9e7151b6a3ebefb6fcc93346d2a23686da4d1dcb4
