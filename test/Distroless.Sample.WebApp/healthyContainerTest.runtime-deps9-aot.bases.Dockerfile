FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:dfcc6bf6005407f78b671fcce5c4eaa3498fc670a1eb5a1aca5aa16886c66a6d
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:6effc3f59e5dd80acde6cfa1a3e030bc98553f29d77bd2b27359b204ef4a0a41
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a7242461161c037e1a02397f8374e777000e678d19325046afc0108c58dde882
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:983b9d1f75c0203a8cf930a6620fc685c86060caaaf3afc4d397098ec131316f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:069a2769780934115b4c002c26b568cd61f3cc47f2f42cdc6d3d45cd9e0be0d8
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:7cc02a114c3329d4d6f27ea5ecfcb2723a96c207389f5b86d0182edbd973bfe5
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:9e10f4cf51a42024d9e818534ed64370b7518bb1ee4fcc153191d0031e8b988d
