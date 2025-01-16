FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:7f9384d9d436ab62a5ed9d3188af2b6bf56655ce646503a9f73ff81795391d4c
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:6884760a3cc5e2d70682b310805935cf86465bb890b3f97822321fdf592936d3
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:0de374fde25c5105e2fe96b04ce7ec01fde363a49f446dc25ebaf038392a3176
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:6f45957603eb12b8e23644f51dfb54cf26b13a6525d288592a718b67eaf90e28
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:12c229e6fb7f92a3778a48d3aa2c7ef550914a59c21e78ef15b16c63b4ada12b
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:61f3fdb74c10e479e59d7503b7474c83bf88c4df68ba4c1d32b1bf011f7633cd
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:732e15dcefc9bfcdf09dd0b5ba2b87ef7858b8d90b24603009c5bf328acfc348
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:8294e5446406dcba4fe2f596f1e75426be574907ad55b10935846db4597a23b5
