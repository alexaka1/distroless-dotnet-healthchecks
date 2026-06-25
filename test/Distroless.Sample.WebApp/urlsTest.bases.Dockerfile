# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:e2a34f0f2b3b8c0f0c1c9291238af64f19e3e8a0ecbdd73547140aede56b791e
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:49cb3b45cd69eeee6579a34a80c6af5e47a27e49734292068f18bdd7ff568e46
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8dc16556c8b4045e452cf68eb269eef8f0695882131dbb7f64fe4647cf916078
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:864ad0e4e53dca2ba24f3e6c91a23ab4da966a560e972448a3378a2d4c895726
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:5b4290317dfea284ebb52d6bdd85aa649fbfb83ed73500402e9a432ca732e337
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fc69d93b106e41b2c02697dbb62bcb3e78eb8acbe7735c39f3d55991bd2176e4
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:0f3eddbb6f96aefc608e2bb8bd3aa30cc76475668de0c21277065e339ca28a31
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:df68da2a6ebdcacf6f246760ab9cbc377da67fbaf0cc0ec88966aac85e0a204e
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:320e13df8f613ccd8bbf128b5a2504ab623b1237b6008bf9ebc6dff86231b4f1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:f5483d580cc5d664c6993a662130fc1e9786ed13d9c7156e810d7e390ffd1a99
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:db56d77cfd91585ce6ac31e8e07bf16f8ceed70ffe2a58ba2e80f971b69b1b99
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:d108310d73a80e2e186d8c1d2162d130f6e6b8994ea2cb11a341845dcbef7b7f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:7d432b39b014b9ec181132b151ca11177759368ebcd3209e16b556c36d2c9398
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:ebf77bcda11592a859834333025c23c44a812d7a120c7bf290a19ca32697c40e
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:297e573be253dafcba4eee8ab29e8e05ab3c5f13f966b3537af2256864de5668
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:f381dd1c884842e5f8c33bfce4b1fb6d3332545ee0afff151ccff5cc1b4633a0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:94cbec9af5f0804479edd7298f2f5bae919403d1012047d6cd6a0daae67740ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:d2179fd670097a8bdd16859fb8acf3f0358d9ceb3403771cc13dad3ff80c672d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:98228867e02fae114402531ec4e3cb8cbfe837e31481ca38f9add87628d048c8
