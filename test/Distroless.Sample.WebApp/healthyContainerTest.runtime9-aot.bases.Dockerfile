FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:f50efa2ae5fdb6c100d691b599dae5b1265520371bf79850ec46cf43cd73810d
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:c13c57f9c745054294831602545c83cd97ee2718c5408e04df9572a3f06869ac
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:a3120b72a2f7f22f71e4ab2a8dbc814ccebdff21b2bf018e96427fb4e7eb50c8
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:f68c2c1ba4c1b1a2a8309e11931b45de248e91eeafb75870ef888fe544e433b9
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:9c49aec1f45fe4959afbdc76be8094f32c8f36307ff8b97a1e662974559ee733
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:1d2e92959b7fe29b1cc35cc001ac7985300ad2546d56a6a4c2a7fd51f07b02ff
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:4f2e692f305df31b8f2063ab2ab4c426bebee149f8ba012469e36fd7edc2fba6
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:0c03a403818970a7d9e98e3cf7f002358ddc3ca620aedab54266089699328548
