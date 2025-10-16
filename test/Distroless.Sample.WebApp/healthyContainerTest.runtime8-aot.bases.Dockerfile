# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:2c7aeff499a34868c8596275a613a7a3b5f8c37dba515ab24531b0b4be6327ca
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:3046af8e903153abb1aec00d1aa1e7b7e8ed74df53815b17d8099527482ec5d5
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:a811231da103fa80e9fcfff7c04dfd8c8265f4e77e72153f12d5f77853eb7098
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:cd1462cc38a0fb89c3824ac63d77cc895cfdd5cff8887a0a3806800eaa37453d
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:a2f94639827b3735589eb03600d172177d07e4708f6eb0e130b77d4b3f4701fa
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:01a0f51c2ecb1c50daebced4b5d140973b0985e463989726ad5c66b4e2e953da
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:d424c8404a339eb847b7ad551d2183d9ee5d26ad16dc47dfa46091bbcdff0554
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:bf74b1c126f8b44897c73e46eba3ad333270bfb07561ef86b8cb69b53e57a367
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:35a9d5f4ed19a9a434fadc41393a5ef7f10bc6b4f6e00df1f47fa07648a5e070
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:a9e9144f09801712af057d3259f6f1d77385be4bc68e8c71ace3f9e6ec6cea9d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:fa477aab29bfe0c01840bfcf7094467c348c42dad1e12356df1e7ba5520b39c8
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:08dafe57e14323d99305f3ab8d54ff6e313edcb08e67d9580163ccb020ebf1d0
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:d33004e51c828f389057f9ff30eeda1ff8117e1a8c4ca8e3250d2f41247e7f10
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:7358b49d33bd239362a2d754a6de1f07965c5fae2e846a9a53d1702e24e7a2db
