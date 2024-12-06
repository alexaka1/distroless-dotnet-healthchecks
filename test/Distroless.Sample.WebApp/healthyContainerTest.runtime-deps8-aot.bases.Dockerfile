FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:a2097627da835c523a663877e5389ea48ca3bec826354b8d0a39ec1070314938
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:61135f944d6a493c6c07aedbefacc4b04ca21142799afe9d853e5df5ee9cdc29
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:fa9eea353f704b3b7260cce9d9631b4c881e728fa3e6281fc855ff7e72e6d41e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:92dc3ebdac8f640a5ea9eec0e8dff82d7ab4bb2ac147a137d7890cad9241893c
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:49c804a439ec5875cb12ac6732f2fbb3f81a5cd765334ce12fb113d33a3ccfbf
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:837962052f9f2e9ecffc3761dbfcc74cdf38f393d5dac343e41c1bdc52596dc1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:3e3021b9c690d371483253331c65d039b3401247335cf9df7cba4274ba9a471a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:576b97385c540c454ff5b7a49a41c42fbd6fdf0f6b36d644f3d80791702bdb53
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:c840afa9499a1db300c4c757890844bbada74efc96b09b1f80a4af1e6146f572
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:76f01db21f2eb59a6908bb8eb20980835ed5ccc6818869651c387a35231560c9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:5d6c345fcf94a90b322eaf96cecf4c950be04023dbbb57d2142034c6833e46e1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:0b2cfae612572a96d1fedb5f0d53d9b8eb5e22eb3a063827a7b4a84e2c22efad
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot@sha256:590ba9e1f9b1e5294b64993ea97c76bb4df7ec8916847154ecc90d2d214a175f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:8b507dbb957c6efbcade4d234c7dab33975f350c7ebde65f962b25752c34b59f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless-aot@sha256:8f866f4a1dbad78ed66967d61fc3c421d30095cd7579c0d6e9ce6bee63b50782
