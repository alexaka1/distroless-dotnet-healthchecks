# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:1836a5b03c92b43fd7d4e403975e75520345b7e4a12187fc2b4966cfef58a9c2
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:0d1b1aa6d1085a4003c4b1b95ae7410482c0f7be58d46e7f83a66ad3c417419a
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:7f5e4d19e1f4f062f4ad08ae955dcb6efde88d27844943878b3edd81c0142c71
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:83ac89532aed59b91078025389d67deb00bd35db770e7d496e5c4cae8cf04ec7
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:a68c7f52cc61c335f49487557e3012cc7a43c7f874c404a653110f5fe89792fa
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:1401caf72ca021c372cc1cf0c89f6bcdd9762421dbe72f0c3a229b889805eedc
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:0b851b35511b027aec950263f640ecbc58087bde3c70827bc67f0f899389bc8c
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:f09fa5f6d9279343683c2e89bb226cdd2c53a3adcf390fbafd30201616271461
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:055dfeb66f2db28ce3e4209f874e868106ae98753ceefdb52fd666906beeecb9
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:cc999b336b16efa7c856afd371d14986ef96241c780db545cb70ebaddf6b99ca
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:2091f2bb375176480773000433cf6affb2a7b60a484f8b21ff7ac0f42376f8b4
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:183ee8bb60f5b72c1ae748c4451ef90e41946cc346a774828217a14d33224744
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:48e83894dfef93d91566de4eddf8d253e0cca99a28c4cb946857c8f5c42cea9d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:cbbf9046f3b5113fcee996377f3850b0c8ded6843c210a4b0c52ff43123f78a8
