FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:c4093cabaece5ace4a1c8fd240fa821b99a91c477c7b7dfe1dbf4678d09c57c4
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:62978f92a63956d56af511fbaf19910af48893cba5370564b75fae17746dc1d0
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:50c77c03cc6f0b56c435b14e4337f3be7c2be61ed7720dd487dc37e200a2791a
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:77300ea8f236e104aba78de3c3412b15d9b9e83cd1c1bdb38c6c390646a83371
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:4275b1d341f4d35bcb1e0f343db1539f656de5c64c170ca80617ff0f939e00ee
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:2f3052a734daa7559e2cb4a579ec1229508f3f7864772344f08b9780eda6ed12
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:faa3438722be53e7816753acf246a0e3fc71775adb02456a1f8126052643a8b7
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:c6916eaccaa9a26cba42eaf2c9a47ec9a6a8b7f49df085d2aab21c5525bb027d
