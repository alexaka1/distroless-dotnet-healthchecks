# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:52011e65ae82d61566a8a028ef72e0a77dbbab6c9233212fc28ad67bc55f1354
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:c5f2b877581478f2a2980b013e8209260800bea2b07a3b03ccbdfbd2251218b2
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:1141cd58bb96f21f36870a16b61a180e438a657b2dcdb672a834608dde6e3d42
FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:f24f21986b9ff69e9d59f1e162d89a80ee99e50f66f80c93eaf9f727b23db12b
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:90846e7c7ea66c8464341fd8c5e92a598beaf12bdad68b201fce137536f8ac7e
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:920c189adefe6915e9be4bfd077449c3776e4de65d940b52cb9f3099e4e9d3a7
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:6e6f7f308bf7f1e558c9378faaac2c0f4004be5f235c588f801ed2eeb97eea3b
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:bd1468c11ba80d4df18da5ada63c36919af5bf1bc142a83f9a9ce968abc991a8
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:055dfeb66f2db28ce3e4209f874e868106ae98753ceefdb52fd666906beeecb9
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:cc999b336b16efa7c856afd371d14986ef96241c780db545cb70ebaddf6b99ca
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:2091f2bb375176480773000433cf6affb2a7b60a484f8b21ff7ac0f42376f8b4
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:183ee8bb60f5b72c1ae748c4451ef90e41946cc346a774828217a14d33224744
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:48e83894dfef93d91566de4eddf8d253e0cca99a28c4cb946857c8f5c42cea9d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:f29e86ba2c163f6dd89689bf12f5bca12291de318ab067d8871277e55f551f30
