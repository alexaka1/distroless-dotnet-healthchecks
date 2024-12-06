FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:b7afeeb945d9cfaf215e8262c5e17ffcba4e4397b7a6fb37610d4c3a30b85906
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:d5c0e8bfef9e0b506a0129af076af2677c51d02f73c5995e54cd33e8ce3cc6e0
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:29943341fb6216992c659c352e716c18f8dd973b1575bfda709cf314e60f2d2e
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:5eabdbfa69b1abfa488fb35355c155cfd953fc49a24a0d2943f9f95d3a192d5b
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:a41d525a2b1e9908e794a7f0c43254f79078f92bf5afa79f9d2ec967d43ac28a
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:4bb9bc1104a6d89e4f3e549a827e05a11b7911681117ebecbe1525c91b1b37c3
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:357dcfbb8c33a0938d5cbca5ac45eec43c5bf6bd215ab04dd7019ccf794c48bb
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:7a2c99fb5095a165bbdb5fe6ae3ea1b20350aea0f0173ae93549495c3611fb5f
