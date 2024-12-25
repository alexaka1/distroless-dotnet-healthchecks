FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:b7afeeb945d9cfaf215e8262c5e17ffcba4e4397b7a6fb37610d4c3a30b85906
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:d5c0e8bfef9e0b506a0129af076af2677c51d02f73c5995e54cd33e8ce3cc6e0
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:29943341fb6216992c659c352e716c18f8dd973b1575bfda709cf314e60f2d2e
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:6d9f5ea169eb84b8ac5f8c94d7d029ff650abfadadc594b557c9438803f4e4b5
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:12c229e6fb7f92a3778a48d3aa2c7ef550914a59c21e78ef15b16c63b4ada12b
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:61f3fdb74c10e479e59d7503b7474c83bf88c4df68ba4c1d32b1bf011f7633cd
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:bb7ee02d8b93f5512760b06f68bb7d7f08a5f5c4b4c4ee2936b8c33f2639acc4
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:89690d196cd36d6b5718804e633329a78467ca360a36abc44879f805db7b4452
