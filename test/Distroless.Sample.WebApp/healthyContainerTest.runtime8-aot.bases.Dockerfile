# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:62d1c7b172a4c254fc48096a29375971859e7dc1b687f9dd8fa699cfab80409a
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:0db043a6fbfd9857673b1c82e47d5c726eb072ad72918aab50424c02893e9e43
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:1141cd58bb96f21f36870a16b61a180e438a657b2dcdb672a834608dde6e3d42
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:d124aee19fc3581685cbf7aeed4951c683f93ead48d3c0a9e867391cf95be4c5
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:82d248ad91f275f08f7adb666ba2b3a53a1a7f6413033b9b854c7fe60f481113
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:920c189adefe6915e9be4bfd077449c3776e4de65d940b52cb9f3099e4e9d3a7
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:e18562c04f11a757d35beb3813c2da08777fcc5f39ef3a03f8935ca27d21d52c
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:f09fa5f6d9279343683c2e89bb226cdd2c53a3adcf390fbafd30201616271461
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:055dfeb66f2db28ce3e4209f874e868106ae98753ceefdb52fd666906beeecb9
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:cc999b336b16efa7c856afd371d14986ef96241c780db545cb70ebaddf6b99ca
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:2091f2bb375176480773000433cf6affb2a7b60a484f8b21ff7ac0f42376f8b4
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:183ee8bb60f5b72c1ae748c4451ef90e41946cc346a774828217a14d33224744
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:48e83894dfef93d91566de4eddf8d253e0cca99a28c4cb946857c8f5c42cea9d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:cbbf9046f3b5113fcee996377f3850b0c8ded6843c210a4b0c52ff43123f78a8
