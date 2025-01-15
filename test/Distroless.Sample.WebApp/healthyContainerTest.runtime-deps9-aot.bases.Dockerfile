FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:44eb2f932c0a5e6498eb843d3048d0fffea250b43992c5cd461373e7c7e248cd
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:90886cef7739adae0b4f4a891ed1a34bd103b0efec18f8e6a5870ac46f534872
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:6f7466eda39e24efaf7eab2325e15d776a685d13cc93b4ea0cde9ee4f7982210
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:b341dd6c6a33f92ff12b4b638db5c73b9145f88843a96ad3b990bb0d84cd696c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:5b3e646423b557b8932d22d1fcdb3b93d1e64b850aeae032f2b552795b73ec58
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:dc52dceac2316bbb5ef11848915aaf7b0253e8c005c3cb5c15c1500477a67289
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:1d666b7bc36b0e179d4bcf0db89b6d35e8f7b58820b4ebdb752c83cbd6921b4c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:716f5a59534a1a93edced745be5b2ba78f5a3a29caabf510cae923166dd2496c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:a79c42e895930554862d13128d0c48e672d4b67d437dacd584f9afb2d331187a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:e81e2d35e9ca17c79f2848a7cb8aec5d0d6d9ab339555d7d91538462b11693bb
