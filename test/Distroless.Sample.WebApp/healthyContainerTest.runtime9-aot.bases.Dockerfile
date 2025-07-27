FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:f90174159add063f40041160baf4ead693302a285c12fa74e60154f1d7acbc16
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:354191f2eb46df6424213005ef1f20f984ea8d585aff8b2eef2f8898f85c8119
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:50c77c03cc6f0b56c435b14e4337f3be7c2be61ed7720dd487dc37e200a2791a
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:77300ea8f236e104aba78de3c3412b15d9b9e83cd1c1bdb38c6c390646a83371
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:4275b1d341f4d35bcb1e0f343db1539f656de5c64c170ca80617ff0f939e00ee
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:72d249ee21eb020c439885a2a9b62962d9ab8db72008672b1097b61436234e46
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:faa3438722be53e7816753acf246a0e3fc71775adb02456a1f8126052643a8b7
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:c6916eaccaa9a26cba42eaf2c9a47ec9a6a8b7f49df085d2aab21c5525bb027d
