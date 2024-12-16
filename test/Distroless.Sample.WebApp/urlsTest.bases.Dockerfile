# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:9f61acdd145ae8e226a34d09da7e95d0376e95f02bbd49343845e6673cb239da
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8ffcf58f74f4ee100fdc971003480069ffc47391e0676982cafe1a003ef44747
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:961ea5c42a16cc7534d7fb69b2df2b97966c349683bdd04ee5347309c8efd779
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:5cc893809e2d2869e1a98c1eecc4c6ff6978d53bc3e5342014eff28a058867a4
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:f901b75d893a4dc895d36095dc9c0e78df3b60bbfc2474fc75dfaf3ae5fcdccd
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:3e3021b9c690d371483253331c65d039b3401247335cf9df7cba4274ba9a471a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:d111fb0875622c573740b6cf94438c4049f848b583e85db1c51f8d195403d285
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:d81933c081f5f241947f7fb3d19a876f0fb0400d8f022f98e7920fa0f207b4e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:dc52dceac2316bbb5ef11848915aaf7b0253e8c005c3cb5c15c1500477a67289
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:89c56062d5ad7a52f917819e65a3e8c5124e3ab51275a7c1433304f8d55cc2a5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:c552264586465ceb3b44f27f6fec680c48bf6d0ef397a669ce7d4623da846ca9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:beefbd5099a28e8f2c8c41fd12bc019e593de7721684944a19669987acf6bbab
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:cbd4d6ffe9305b283a44dfa52c1a6bbb6cc1eb494682475dc3d986b446bcc8cc
