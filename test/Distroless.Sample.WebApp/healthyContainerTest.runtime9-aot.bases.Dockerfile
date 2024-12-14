FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:b7afeeb945d9cfaf215e8262c5e17ffcba4e4397b7a6fb37610d4c3a30b85906
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:d5c0e8bfef9e0b506a0129af076af2677c51d02f73c5995e54cd33e8ce3cc6e0
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:29943341fb6216992c659c352e716c18f8dd973b1575bfda709cf314e60f2d2e
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:6d9f5ea169eb84b8ac5f8c94d7d029ff650abfadadc594b557c9438803f4e4b5
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:3e3a918f80daf3ea7de7ab39d13a6432911944711761137b81bd9fc5c6354616
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:8a0e2c3fca0f113cbd1afb12cd546781aac78ea36e2b1aa3c358f24f6861ae87
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:af9947ab3b921565a2a6c96d707ab99f30607d9cf612cc2f41086e7d8ed7df21
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:a1c93476d70b49eec9e080e5cc2b808af62d4bf75c4b7de666315568002885a3
