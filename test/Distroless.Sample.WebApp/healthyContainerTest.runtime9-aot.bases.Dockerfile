FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:c31b1ae5818421e20c0792e9e169004b1ca637486ef85b1c662921d82b053a03
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:994127fd5530dc866b22d44d849cae596feb6fbb5a0d9f15ddc50f182f815d8e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:0de374fde25c5105e2fe96b04ce7ec01fde363a49f446dc25ebaf038392a3176
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:8513a6375715651a588ddc9b70d6f4cb6cbd5ea2791d080728e5cfe7bfc8ffa8
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:e5cb0d4c4195df486a562144a5630262a7796c5573828b4b772adf9a8f4748fd
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:1064742bb445618ae64eb2f5918a963032111576eb4a223f2f4d205c5e678821
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:9b511b484bfc40d2afc767a164804fe8bff26afc0d7ec6c2dba8e4c5bc1efef6
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:37a9d4aacdd6f53ca1046e0c8d511b0382e44a7c86dce9b41d0d178ac2c8df90
