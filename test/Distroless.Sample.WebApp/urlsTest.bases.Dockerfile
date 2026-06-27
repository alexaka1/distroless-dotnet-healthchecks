# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:e2a34f0f2b3b8c0f0c1c9291238af64f19e3e8a0ecbdd73547140aede56b791e
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:49cb3b45cd69eeee6579a34a80c6af5e47a27e49734292068f18bdd7ff568e46
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8dc16556c8b4045e452cf68eb269eef8f0695882131dbb7f64fe4647cf916078
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:864ad0e4e53dca2ba24f3e6c91a23ab4da966a560e972448a3378a2d4c895726
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:5b4290317dfea284ebb52d6bdd85aa649fbfb83ed73500402e9a432ca732e337
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fc69d93b106e41b2c02697dbb62bcb3e78eb8acbe7735c39f3d55991bd2176e4
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:0f3eddbb6f96aefc608e2bb8bd3aa30cc76475668de0c21277065e339ca28a31
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:97ebc1fdcce68defae5b31f5ce6be6c1abe86ac7fe0247d454a3a92685df2f95
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:320e13df8f613ccd8bbf128b5a2504ab623b1237b6008bf9ebc6dff86231b4f1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:ec7e51a6c081dad3baac83c6cf94d263d2ccfc1be5da3354f239f37e5cd84832
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:7cebc55d514dee386a5fe7111a59cc63143ce80d84f888b812741c7a43fced15
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:d108310d73a80e2e186d8c1d2162d130f6e6b8994ea2cb11a341845dcbef7b7f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:ebec6e036d51ca784045d84219f60b2ddda83c0d763f6b5359bf4e218a2f78d5
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:ebf77bcda11592a859834333025c23c44a812d7a120c7bf290a19ca32697c40e
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:297e573be253dafcba4eee8ab29e8e05ab3c5f13f966b3537af2256864de5668
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:83b8944617c3f912cd52f9766ea622479e657f58f59258ba546f133c73276934
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:94cbec9af5f0804479edd7298f2f5bae919403d1012047d6cd6a0daae67740ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:92c117f991e0c1efc382e6b1b6e6cbb182ae3f35359f8753138cbbd34f863c92
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:2314f19772341080c39b01c83af207c0c28f084ee76c43a0c1aa8e276d527bf0
