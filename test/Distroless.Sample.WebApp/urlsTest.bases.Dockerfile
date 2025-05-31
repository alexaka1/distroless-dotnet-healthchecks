# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:933c58aa27a581d6186531ef660a12a7b91c274ee33d6702e40a77a07bd30ade
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:1ad109a88cb2b559ca0c264a945f713bc6a03c78eab68cfb95c360ecf2cf0997
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:770b52a6e37b5a834bcf1681188f30b19fd2bee4020b7d1a16b9c3fbc3c162d3
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:c03b48d53da8f6ba5ad1489892381a15e867f470c425d3254af74bb0fc23c8e1
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:345a80460dd821868496120c98920f73079d25440abae0a7b9bf90e423cea583
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:3be442e4caa24b49522b87cfb015ac7cda947ab21927070692d22e4240923c5a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:899ebd6681a4872ed5b3f4323964538795d2b38872eda1c75eaa4597ba2856c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:2de5eae2a1ed9dd1497a2c6cf577fbb9dccd28aef873c409fe76192f9e24f7ae
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:0da76314f44452ebe1265c8c9342ce1dea08468366e8618ca947a15b45735b17
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fc8438856878592f2d4071ab708f87f7605b09b6cb0fc52898a697842fd14128
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:24b444281d20175566e5431a40ee86e8502a8a56368fd24dd89006e5ebf2384f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:8c3505e61fb6a69728ca788bad7409d5617707851cf27a12e67a83e2bfaea51c
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:9986b159cd530c5eeb72ceeaef2a9653f90f10bfc6149803bc62db9662d3679a
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
