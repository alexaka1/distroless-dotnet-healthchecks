FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:52011e65ae82d61566a8a028ef72e0a77dbbab6c9233212fc28ad67bc55f1354
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:f89505e65a79a1eef365a490d9afb572a4821caa82dbf72497c980daea5ccf5a
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:90846e7c7ea66c8464341fd8c5e92a598beaf12bdad68b201fce137536f8ac7e
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:6e6f7f308bf7f1e558c9378faaac2c0f4004be5f235c588f801ed2eeb97eea3b
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:bddb10163e8e8068a804bedcd3627a78a97837bc1dd1873a02f0cd35c1a9ca9d
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:4e5fc0cb9a755c1ba5eeb4ace4e125f239238eb2441c70bd5da6af345140dbd7
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:181a88fcd257f07f3b79448e8fab08114404a4b45842a9de7ca6504eece1f00f
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:a1f5b2e71c4ef3f890babaabc95310d7c5da535306756a3e0f19ff593bebed23
