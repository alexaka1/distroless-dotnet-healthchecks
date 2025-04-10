FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:88e3222b8d24631b30b993293c2a7450fb64b12a9e87f488d8fe3c142928649f
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:772c9ece52e95526448def81f42fda6bd8a2a569155a4a5daa8d0405b9e3f034
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:4573c8c35826d126e8301a0683ea38418ccb79d83a9ca341dfd5ad95aee4dc71
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2a58bc301d60acd0161ea4983228c7cfb9082d3759a36a8bb1e6dd1e93f1d7fc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:41e8e5cce3e42060dba34e38266d8b761a019b1ffd07efcd6f0ad03029067593
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:4fc009a452d0c1d2355c604c4cf10036bcf2aca6fdffd4b582d9f6d2412ee6a5
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:bcaaa4cac2ab57d0637474872fa012651a2efeeea53209b77387cb344869cf64
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:bcaaa4cac2ab57d0637474872fa012651a2efeeea53209b77387cb344869cf64
