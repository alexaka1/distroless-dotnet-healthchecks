# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:85617debd39223f2a9f3d612cbb9e3382381dcb4bb811fdecc89e5b7f2a21e65
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:fb51c46d3ae523a3d095b116bea5f6c952225cdb89799661378e0d7f872580d0
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:f22c6323e4c8bcba2f719c222c6d673cd85e1895f68f0eb43cee6a1c465e5257
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:12f3d75d90d360cb8266fd63a79e5be3ddc4524fcbb0ebae4432c9aabdc9c0cb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:75bde23c6d2cad0868a912ca9b3a5002ff8771d3dd5f2a17b793b6638ba8f602
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:19e0e03110d47b9b07a2e02cc57e5785129e8b46eca1e8046bb43ed7b3f17a99
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:370f60ebdcf2baea6b249e3d10f59cf5576ba1f5ed39d976abdbb3fe3416f606
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:ca33c731081c0a5e7fe5fd5929a13756f91428370d94ca913e0bb88a468d40e3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:afb522ffad40179dcecfa76597c73ee8f94cdf9dfd03d55e9ca1a08b1ec72337
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:70611f40e2927927c54018ce56ce376e1bc01c6aaf71ab6bd687ca4470cb3b0c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:add962d8f8991d538d1029133a9161bc7e976ed12b5b4f0d6c56f0410052e46d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:d34be9f61b1a7d107bb5daaaf494303c8dac2c66d4a1e0b17212bdc8e35919e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:38b0c0715fe4c11f73dc4c24389ddbc42aa81e38fc66a00bd2f628a6e8d2a86d
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:61964ad925c241da9b9a3651a6d6a76916548a53c82bc4b5f36bbe089c618002
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
