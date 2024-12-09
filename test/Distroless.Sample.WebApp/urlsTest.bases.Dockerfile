# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:9f61acdd145ae8e226a34d09da7e95d0376e95f02bbd49343845e6673cb239da
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8ffcf58f74f4ee100fdc971003480069ffc47391e0676982cafe1a003ef44747
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:961ea5c42a16cc7534d7fb69b2df2b97966c349683bdd04ee5347309c8efd779
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:5cc893809e2d2869e1a98c1eecc4c6ff6978d53bc3e5342014eff28a058867a4
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:f901b75d893a4dc895d36095dc9c0e78df3b60bbfc2474fc75dfaf3ae5fcdccd
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:3e3021b9c690d371483253331c65d039b3401247335cf9df7cba4274ba9a471a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:5d6c345fcf94a90b322eaf96cecf4c950be04023dbbb57d2142034c6833e46e1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:d81933c081f5f241947f7fb3d19a876f0fb0400d8f022f98e7920fa0f207b4e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:1315d63cc3c5b315e1896ce3a273216322331763384fd2f6fe044a405a9513bc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2383e68031ee0dbc08de43b778d1a8a915bb947577149622e7c019c45c328f58
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:11e04d747aad8555f144f8460da7bbb93a810734a8172fbb6cc81c6a2142c8ee
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fc0a4356003c5cf9e56046e9356b95bad7460df1fab45d34b55468192474983b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:792fa664ee9558bb87286cd829f50c314e32027b5ce9c90722f07da2c6e0e078
