FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:933c58aa27a581d6186531ef660a12a7b91c274ee33d6702e40a77a07bd30ade
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:def86d5621f980d184263a8e9fe9e5ca84345e731359163a6e4afe93ae78781a
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:4d85704102f6992882301268a06cc0ea4d37760ec294c9f5313417793c330766
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:2e4b019171b70fdebd2a5cc44f493ccf6515f4d15c6a6382fb30252185365a80
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:184d1ad32b41a16cde0a93cd7a836f34d65cbc484e3ce03a50bbdae95c933446
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:ac4a79dfe91a4e01a113ba8714949bb2fccec1149650e53467ff667a051091ef
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:3be442e4caa24b49522b87cfb015ac7cda947ab21927070692d22e4240923c5a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:4c2febc36e12dce36fd55e53ed0d5c67f26627d09e9895d4bc22902cf8491535
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:cf526eb79ef9ac78c34b3d2736849c1c1ace7cd36f75fe2804f647e123383009
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:899ebd6681a4872ed5b3f4323964538795d2b38872eda1c75eaa4597ba2856c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:4cd7ec0999a0461a59be7dd5f1f3a7313e75ac5a0abce98c4bac0efb1aed8687
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:f08fb2feae98bdcd99e39167329097d73780b2ba3ae13124671c45fc04fcd532
