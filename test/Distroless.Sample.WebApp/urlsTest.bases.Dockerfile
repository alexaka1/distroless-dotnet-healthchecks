# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:112d7e3bf16c7fd4fff5aca69c68e14ced7950a46fffabaaf0fba42848d68727
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:9f07557e60966f3c6132bdcdfa95d855027f6f1f5e23758bac40cded96d4a6e6
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:0603f84792661619d785c136dc84334b6e467afe8b5e928ee4ba2f04ee0f3cbf
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a5ae01ce4507635fd4114871411c82355f8b230972bab50b1abd10ecbc9bd77a
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2f93d20a77bde3d446df152add8b95dd612e50d081148528cf710061e31ab933
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:605c01bdcf1aae2bad4f1f79250b4622a888021cc50e5bab12b8954b8aa1fc44
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:370f60ebdcf2baea6b249e3d10f59cf5576ba1f5ed39d976abdbb3fe3416f606
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:62479fc9fbe22c7e009dddc857866cdad88d280f536a168defb8583a80f980cc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:afb522ffad40179dcecfa76597c73ee8f94cdf9dfd03d55e9ca1a08b1ec72337
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:70611f40e2927927c54018ce56ce376e1bc01c6aaf71ab6bd687ca4470cb3b0c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:add962d8f8991d538d1029133a9161bc7e976ed12b5b4f0d6c56f0410052e46d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:2d1c950399c7d8ecdec1d3b2ac3468ad9ca63abc38b5e607d3da394b3ba18483
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:5a5b3abb9892dcd52ed9616ad2e8efe0b739d050e12dba74f3bc90e109c27164
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:418e2891cc12526a45b43aad949118e0b8ba9cd830539c5159177bb0e42c6348
