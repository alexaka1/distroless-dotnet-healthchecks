FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:4fb8b01c8a0d06ac36c664d6c55630a7d11c971fc6f8575ca15bf0de1c67b46d
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:51adc89fe35e5379b52b9e74f4280d6cf4b67d4865fbeefd7894ee82f0214974
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:b1204874cce90d7d82be70e505fd0453e0e78d2de64e4bc08f78d53ff05e201e
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:038fe0499cd71f84873304b1947ef4c4a51f1355e76dd2b8a7be54a7bd604cc4
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:12c229e6fb7f92a3778a48d3aa2c7ef550914a59c21e78ef15b16c63b4ada12b
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:61f3fdb74c10e479e59d7503b7474c83bf88c4df68ba4c1d32b1bf011f7633cd
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:bb7ee02d8b93f5512760b06f68bb7d7f08a5f5c4b4c4ee2936b8c33f2639acc4
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:7be70ceb3fe184c8ee5f39526c093d9efdd90d5478f2f21c36ddffc0644f9b01
