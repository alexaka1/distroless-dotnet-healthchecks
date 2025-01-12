# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:74a14ce3ebbb56752032d643754dd0509da15418f2eea1526241b8e104114021
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:80b658b28e704be70f376041f0d8d574e1072c12ee3bdbee46b6d7876a5948e2
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:45fd6dce6aba0fdefe4e3a5ef1f54093dd5d4dcb2135241e79cf3574e3b25d8f
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:29a4fd3882287f148dd3745bbdb2e490a47eb1b84c44c593a19a100c4f7caca5
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:9269af06411c50714b4fc274d735f40a090dccb1ba42776829522e2ee4b4f437
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:6abee90e75eed04edf0c3f7ace01890dfd3a0396e9ab531ffa807be661a3a04b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:c2b6a0b8b3d55607deef1449229c0f3e8ce885e2b9a52be947fb38af8b4b5758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:5b3e646423b557b8932d22d1fcdb3b93d1e64b850aeae032f2b552795b73ec58
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:dc52dceac2316bbb5ef11848915aaf7b0253e8c005c3cb5c15c1500477a67289
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:1d666b7bc36b0e179d4bcf0db89b6d35e8f7b58820b4ebdb752c83cbd6921b4c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:716f5a59534a1a93edced745be5b2ba78f5a3a29caabf510cae923166dd2496c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:a79c42e895930554862d13128d0c48e672d4b67d437dacd584f9afb2d331187a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:e81e2d35e9ca17c79f2848a7cb8aec5d0d6d9ab339555d7d91538462b11693bb
