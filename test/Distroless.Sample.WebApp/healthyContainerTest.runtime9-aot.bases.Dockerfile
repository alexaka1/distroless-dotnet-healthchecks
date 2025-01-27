FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:7f9384d9d436ab62a5ed9d3188af2b6bf56655ce646503a9f73ff81795391d4c
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:6884760a3cc5e2d70682b310805935cf86465bb890b3f97822321fdf592936d3
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:0de374fde25c5105e2fe96b04ce7ec01fde363a49f446dc25ebaf038392a3176
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:6f45957603eb12b8e23644f51dfb54cf26b13a6525d288592a718b67eaf90e28
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:ae80d8555c1dc1ac351ecab1c41f87e6cc8181f3b14463275f133430f5207235
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:1064742bb445618ae64eb2f5918a963032111576eb4a223f2f4d205c5e678821
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:9b511b484bfc40d2afc767a164804fe8bff26afc0d7ec6c2dba8e4c5bc1efef6
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:37a9d4aacdd6f53ca1046e0c8d511b0382e44a7c86dce9b41d0d178ac2c8df90
