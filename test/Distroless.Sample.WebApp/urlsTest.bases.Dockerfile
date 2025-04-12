# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:33ed90ab2dc5d27c690210414406840a581b74b270f2bdef8b961cfd189731eb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:88e3222b8d24631b30b993293c2a7450fb64b12a9e87f488d8fe3c142928649f
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:772c9ece52e95526448def81f42fda6bd8a2a569155a4a5daa8d0405b9e3f034
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:4573c8c35826d126e8301a0683ea38418ccb79d83a9ca341dfd5ad95aee4dc71
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2a58bc301d60acd0161ea4983228c7cfb9082d3759a36a8bb1e6dd1e93f1d7fc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:c4d20dcf29f932de3b4ebd811dda8ea38f39c64e01ff2ea7b05722ce15261cfb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:899ebd6681a4872ed5b3f4323964538795d2b38872eda1c75eaa4597ba2856c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:eeaed60d9666e32c737275e9bf2e1fb7204176419e86193e6feb27da9b0b7372
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:be70e31e7df4c675618870837bb0efbd81b14fa98fc6b7673b3b842dc8750d99
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:17ffe10392a61f2dbf95b10e612761db4b6bdda4e99d6b6f68e6c5d6587dd3d1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:9a8aa245ebc3e73eaa5787049957d764e05fe0f8fc3ad6723c3042464488ad82
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:d089ac1c7a96166ec7a394564b9337934947c066b4f4dc02e41d9ee2555d7991
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:135c47f7f28b1416c3bf8e3b5ccdf8c1960174be08eae1e3323aced7a1bf5eaf
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
