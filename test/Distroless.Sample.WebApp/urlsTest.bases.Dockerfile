# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:74a14ce3ebbb56752032d643754dd0509da15418f2eea1526241b8e104114021
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:80b658b28e704be70f376041f0d8d574e1072c12ee3bdbee46b6d7876a5948e2
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:961ea5c42a16cc7534d7fb69b2df2b97966c349683bdd04ee5347309c8efd779
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:5cc893809e2d2869e1a98c1eecc4c6ff6978d53bc3e5342014eff28a058867a4
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:f901b75d893a4dc895d36095dc9c0e78df3b60bbfc2474fc75dfaf3ae5fcdccd
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:6abee90e75eed04edf0c3f7ace01890dfd3a0396e9ab531ffa807be661a3a04b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:3c9f54d63c33e97f1a96917aa2e11cccc8406dfc61bf473c2ec55bd10d0e97dc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:5b3e646423b557b8932d22d1fcdb3b93d1e64b850aeae032f2b552795b73ec58
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:dc52dceac2316bbb5ef11848915aaf7b0253e8c005c3cb5c15c1500477a67289
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:252c83377595ae550267fdbc2e20501f1c14724505296979c9973863122dcc97
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:b4ed0cd337e357e177ac2caa28ccffbf7f48c7da267bd59a67db0388ec0e7967
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fd128b568c75cd3e325b879332b8731003f622c9114d791782664e0788b5a801
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:4595932d3642342cc71c3a2f0daaa460048d20504eff9b60fa5dba7d8007e44a
