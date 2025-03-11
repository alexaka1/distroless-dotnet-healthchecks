FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:03fe3b9f932fc9c3d1a76c6a0fecc8e2f1b9ed302deda29f920d81e50c9aad6f
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:92ad466be4636f7ca7db9ed43ebd746127658bd0b69a5ff46dadd58f52b2ec53
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:0eb100b4135630b388acecf0b35c9d974a682fcf4c96d7ef731d814a4a8ea93b
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:453a0697a9048f49b0a0094abbca8ab2b3fdb5dec2e92da25c4e8ffab66e8c7b
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:9c49aec1f45fe4959afbdc76be8094f32c8f36307ff8b97a1e662974559ee733
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:1d2e92959b7fe29b1cc35cc001ac7985300ad2546d56a6a4c2a7fd51f07b02ff
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:4f2e692f305df31b8f2063ab2ab4c426bebee149f8ba012469e36fd7edc2fba6
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:0c03a403818970a7d9e98e3cf7f002358ddc3ca620aedab54266089699328548
