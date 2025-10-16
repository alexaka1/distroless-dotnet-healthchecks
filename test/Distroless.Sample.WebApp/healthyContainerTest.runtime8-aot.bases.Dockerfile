# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:e9aabde56bb3e55d416d4e926032af75fed831da70bb428d556120ee2649f8b0
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:9d4f8a4ea9e8ed1305dda3b34cab3c176a9dd9a8c703c7b17fe49009a605ae2e
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:59c3f960540a0eaec6116725cc1823d076fe340e022eb9085eee04e5e40efa2a
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:8d1f30ef6de194348f581bae5979ba8c38eedfee63faee33f83bbcdd254a814c
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:a68c7f52cc61c335f49487557e3012cc7a43c7f874c404a653110f5fe89792fa
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:1401caf72ca021c372cc1cf0c89f6bcdd9762421dbe72f0c3a229b889805eedc
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:f516a25cab5c5359fa0fe694e024e643a97d8b677a68322571c48916581c393f
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:bf74b1c126f8b44897c73e46eba3ad333270bfb07561ef86b8cb69b53e57a367
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:35a9d5f4ed19a9a434fadc41393a5ef7f10bc6b4f6e00df1f47fa07648a5e070
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:a9e9144f09801712af057d3259f6f1d77385be4bc68e8c71ace3f9e6ec6cea9d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:fa477aab29bfe0c01840bfcf7094467c348c42dad1e12356df1e7ba5520b39c8
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:08dafe57e14323d99305f3ab8d54ff6e313edcb08e67d9580163ccb020ebf1d0
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:d33004e51c828f389057f9ff30eeda1ff8117e1a8c4ca8e3250d2f41247e7f10
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:7358b49d33bd239362a2d754a6de1f07965c5fae2e846a9a53d1702e24e7a2db
