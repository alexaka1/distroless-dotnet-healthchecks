# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:85617debd39223f2a9f3d612cbb9e3382381dcb4bb811fdecc89e5b7f2a21e65
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:fb51c46d3ae523a3d095b116bea5f6c952225cdb89799661378e0d7f872580d0
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:f22c6323e4c8bcba2f719c222c6d673cd85e1895f68f0eb43cee6a1c465e5257
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:12f3d75d90d360cb8266fd63a79e5be3ddc4524fcbb0ebae4432c9aabdc9c0cb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:75bde23c6d2cad0868a912ca9b3a5002ff8771d3dd5f2a17b793b6638ba8f602
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:605c01bdcf1aae2bad4f1f79250b4622a888021cc50e5bab12b8954b8aa1fc44
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:370f60ebdcf2baea6b249e3d10f59cf5576ba1f5ed39d976abdbb3fe3416f606
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:62479fc9fbe22c7e009dddc857866cdad88d280f536a168defb8583a80f980cc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:afb522ffad40179dcecfa76597c73ee8f94cdf9dfd03d55e9ca1a08b1ec72337
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:70611f40e2927927c54018ce56ce376e1bc01c6aaf71ab6bd687ca4470cb3b0c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:add962d8f8991d538d1029133a9161bc7e976ed12b5b4f0d6c56f0410052e46d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:2d1c950399c7d8ecdec1d3b2ac3468ad9ca63abc38b5e607d3da394b3ba18483
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:5a5b3abb9892dcd52ed9616ad2e8efe0b739d050e12dba74f3bc90e109c27164
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:418e2891cc12526a45b43aad949118e0b8ba9cd830539c5159177bb0e42c6348
