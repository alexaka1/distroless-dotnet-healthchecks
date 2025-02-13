FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:da09ba013a4ceb463e17b77c821acdd81d17f26384227340a31690d3bf0044bc
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:c13c57f9c745054294831602545c83cd97ee2718c5408e04df9572a3f06869ac
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:a3120b72a2f7f22f71e4ab2a8dbc814ccebdff21b2bf018e96427fb4e7eb50c8
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:f68c2c1ba4c1b1a2a8309e11931b45de248e91eeafb75870ef888fe544e433b9
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:e5cb0d4c4195df486a562144a5630262a7796c5573828b4b772adf9a8f4748fd
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:1064742bb445618ae64eb2f5918a963032111576eb4a223f2f4d205c5e678821
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:9b511b484bfc40d2afc767a164804fe8bff26afc0d7ec6c2dba8e4c5bc1efef6
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:37a9d4aacdd6f53ca1046e0c8d511b0382e44a7c86dce9b41d0d178ac2c8df90
