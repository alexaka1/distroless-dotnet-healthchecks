FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:8226744060124b043c4d44f69e13c339c4a59d208bf5dd1a0e50931c03d684e3
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:b04185779b0884be4a5be689ff39a0aa40b0ff705ad243a0c378bdd1c139389e
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:2e1d9ae04eb69a3c3ad7e694e62ce53da1c11641766ad64a623568b8e0d62d56
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:c1104b535ba71b3b1e7662741f68cdbeda37a06485e1c320bf33b752a3b7a879
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:6f3cc382ee84beb898331f8c641eb8e63bfb2032288ffaf1beae1fd7e8b3ee12
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:490201d34f2175f8d319ae8a88cb61906b3c8a2f3104ba712924b026b7ad2efc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:50ada20a42469a740b4c89c091767df06ee6cfb057fbdba61a8d28e439d1d758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:b4a09abe1ebd08d090f4ae9cf62927c418d6c3b02b1d806f2d14af89a74cd88f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:ca9d484440ffcc1081de4b0053553d9e481250c41699f1f3bb582d8e1b293626
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:899ebd6681a4872ed5b3f4323964538795d2b38872eda1c75eaa4597ba2856c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:4cd7ec0999a0461a59be7dd5f1f3a7313e75ac5a0abce98c4bac0efb1aed8687
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:cb19274f4d1e585144ad5491b190bf6e4ca8f22350d7945a57bb537fdf78215b
