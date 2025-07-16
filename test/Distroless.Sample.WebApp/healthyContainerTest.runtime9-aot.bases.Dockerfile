FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:9563e814250fef5dde24cd68916878ef5faa8f993bf99a06db1c947f23217996
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:49cf6a7c26204e42b399f231b39a7ffd67e0d6329132ebfea9b8263f1e793d97
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:83933edfd4089b9dfc6e83809b79409fc224907d0c5b402409b77ec0cb998675
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:b3618af4646e46bc58309de56e7600687d9a39e4cb095e2988ff868e233de586
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:3c78d6512a7cf9e0e8e19b33ae3fb8454dd9c38aa18fa0f15789ac83321532f1
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:72d249ee21eb020c439885a2a9b62962d9ab8db72008672b1097b61436234e46
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:faa3438722be53e7816753acf246a0e3fc71775adb02456a1f8126052643a8b7
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:c6916eaccaa9a26cba42eaf2c9a47ec9a6a8b7f49df085d2aab21c5525bb027d
