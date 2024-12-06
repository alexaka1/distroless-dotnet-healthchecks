FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:b7afeeb945d9cfaf215e8262c5e17ffcba4e4397b7a6fb37610d4c3a30b85906
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:d5c0e8bfef9e0b506a0129af076af2677c51d02f73c5995e54cd33e8ce3cc6e0
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:29943341fb6216992c659c352e716c18f8dd973b1575bfda709cf314e60f2d2e
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:5eabdbfa69b1abfa488fb35355c155cfd953fc49a24a0d2943f9f95d3a192d5b
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:3e3a918f80daf3ea7de7ab39d13a6432911944711761137b81bd9fc5c6354616
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:5c720d151eb18e28c1853b53df5cdf7ee7a50788ef2bbf4da61c1af938c9a0c4
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:bf4c31da4c6c397c21e4d16f0e3e284af02876a3dfea64b7bc8d01dde4e615be
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:31dac7cdaa72ad37d749df327bc54369a81837fe3256d3b16399309e358b864d
