# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:62d1c7b172a4c254fc48096a29375971859e7dc1b687f9dd8fa699cfab80409a
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:0db043a6fbfd9857673b1c82e47d5c726eb072ad72918aab50424c02893e9e43
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:1141cd58bb96f21f36870a16b61a180e438a657b2dcdb672a834608dde6e3d42
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:d124aee19fc3581685cbf7aeed4951c683f93ead48d3c0a9e867391cf95be4c5
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:82d248ad91f275f08f7adb666ba2b3a53a1a7f6413033b9b854c7fe60f481113
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:920c189adefe6915e9be4bfd077449c3776e4de65d940b52cb9f3099e4e9d3a7
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:e92d6ba9a9e644bff3cd7e2733d332fb208c33eb6bb495a45fae9b9d75b89537
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:bd1468c11ba80d4df18da5ada63c36919af5bf1bc142a83f9a9ce968abc991a8
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:055dfeb66f2db28ce3e4209f874e868106ae98753ceefdb52fd666906beeecb9
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:cc999b336b16efa7c856afd371d14986ef96241c780db545cb70ebaddf6b99ca
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:183ee8bb60f5b72c1ae748c4451ef90e41946cc346a774828217a14d33224744
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:48e83894dfef93d91566de4eddf8d253e0cca99a28c4cb946857c8f5c42cea9d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:f29e86ba2c163f6dd89689bf12f5bca12291de318ab067d8871277e55f551f30
