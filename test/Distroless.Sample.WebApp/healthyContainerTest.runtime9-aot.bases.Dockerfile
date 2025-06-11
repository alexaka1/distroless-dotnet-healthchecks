FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:9563e814250fef5dde24cd68916878ef5faa8f993bf99a06db1c947f23217996
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:49cf6a7c26204e42b399f231b39a7ffd67e0d6329132ebfea9b8263f1e793d97
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:83933edfd4089b9dfc6e83809b79409fc224907d0c5b402409b77ec0cb998675
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:b3618af4646e46bc58309de56e7600687d9a39e4cb095e2988ff868e233de586
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:9d2279883c537974594da7f27328492e2c40a24c4c0643008582de56d56aaf4e
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:5a129ece983ef8ce5d882ec33f64d45e639f6f0d6d8d2ca232eb286b7a767f72
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:d70e18d3121e6502205747d40e7c548d669184607483e50b2c43881a3ccb2a0c
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:b0fba975dcf4982c0f5c64e030039cafbc22562f34a5cbd851bfc12a29908cf7
