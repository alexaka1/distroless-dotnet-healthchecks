# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:74a14ce3ebbb56752032d643754dd0509da15418f2eea1526241b8e104114021
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:80b658b28e704be70f376041f0d8d574e1072c12ee3bdbee46b6d7876a5948e2
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:961ea5c42a16cc7534d7fb69b2df2b97966c349683bdd04ee5347309c8efd779
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:5cc893809e2d2869e1a98c1eecc4c6ff6978d53bc3e5342014eff28a058867a4
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:f901b75d893a4dc895d36095dc9c0e78df3b60bbfc2474fc75dfaf3ae5fcdccd
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:3e3021b9c690d371483253331c65d039b3401247335cf9df7cba4274ba9a471a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:3c9f54d63c33e97f1a96917aa2e11cccc8406dfc61bf473c2ec55bd10d0e97dc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:d81933c081f5f241947f7fb3d19a876f0fb0400d8f022f98e7920fa0f207b4e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:dc52dceac2316bbb5ef11848915aaf7b0253e8c005c3cb5c15c1500477a67289
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:252c83377595ae550267fdbc2e20501f1c14724505296979c9973863122dcc97
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:b4ed0cd337e357e177ac2caa28ccffbf7f48c7da267bd59a67db0388ec0e7967
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:beefbd5099a28e8f2c8c41fd12bc019e593de7721684944a19669987acf6bbab
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:cbd4d6ffe9305b283a44dfa52c1a6bbb6cc1eb494682475dc3d986b446bcc8cc
