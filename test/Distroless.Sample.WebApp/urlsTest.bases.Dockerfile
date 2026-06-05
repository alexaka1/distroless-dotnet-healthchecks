# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:c3babb12715e6568589f2262f2d5cbed203578ada99e479d313c59aaabfbec4c
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:043fe7ff2ee6ed77a160d11bd7b23a800da96643e14d73b60d3db7a45e58ea65
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:7bfab88c5e62c7bd5c94e51cc6657d82942d0e4629845249f3560730baa398e0
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:49c64d8eef99d73407dc4bc804f62c1e5cf6df397ff63f062b4f78ad44e09adf
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:f29c598f281f9c2ded2ee23040cba36c19559ed6fae72b4e953e798aee2dac90
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:52157276436aaafe154f68201920d39211c9dd9fa986825052db6e43571700d0
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:47fd5f8e1f727bc0da8881b9b2d98cb06b243d71f10dfd2bf6c5ff670e6cb590
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:1dc291de4a72e72b4dd9e92954959c553a71192298011572af60eee583c9edbf
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:320e13df8f613ccd8bbf128b5a2504ab623b1237b6008bf9ebc6dff86231b4f1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:6205e82f6dafc968c084ec9017c196fc0d1e609bb04ff931fc6cdf3f805ef7ab
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:acc45822feb013efb902c2cdd27df988403356420df08e507cd422c9b9bca80a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:d108310d73a80e2e186d8c1d2162d130f6e6b8994ea2cb11a341845dcbef7b7f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:d4bb76667b63fd04f7c98054a716b340652d0e3433571fbdfb69b115d60e2e6d
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:02cfde646311bfe8a6332681091b323215451cc1beec65afe5e6d1dbb05117c8
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:f276c0256ffca8fe816d48ba261962b54fea1b0e6f870b6a60b3b705c89e78ac
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:f8a965ed3241323564fcf72a599b0c032f281d8c65f2dc3a02f444fb8f8fe507
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:94cbec9af5f0804479edd7298f2f5bae919403d1012047d6cd6a0daae67740ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:ada7d7abb608a13fe0d47d35eeda880bcac08a971c0fd1b2323853aca6d03c7e
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:5c2a513686cb809359e5dbc989715879269b059f707be3500dcf87fbb8a597ce
