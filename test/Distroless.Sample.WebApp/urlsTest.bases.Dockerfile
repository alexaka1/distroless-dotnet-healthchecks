# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:ef3ead62e1159910ed1ebe65a350bad061c022cf4d7b793fdab7a45b32739dc7
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:80fd1757ac9900a2a2afd55f92b93c0362ac32e959514a8aa837e93db9282ac1
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:73c874bc3c12db34fca565af2617c5426137efc12842a004432fe3954d080c8d
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:6f7466eda39e24efaf7eab2325e15d776a685d13cc93b4ea0cde9ee4f7982210
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:b341dd6c6a33f92ff12b4b638db5c73b9145f88843a96ad3b990bb0d84cd696c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:4c9333f156b5296f874696a6b873b09f99b80167307660ba779eac52279fa29e
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:c2b6a0b8b3d55607deef1449229c0f3e8ce885e2b9a52be947fb38af8b4b5758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:c1f55d20ef9d037a0f4caff532333aff1e3cbb4842507ebc9899e3c07cb1167c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:72cf81e414066174ca5446ddf506f1362132e319a069b81bdba70a3005d7bd2f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:1d666b7bc36b0e179d4bcf0db89b6d35e8f7b58820b4ebdb752c83cbd6921b4c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:716f5a59534a1a93edced745be5b2ba78f5a3a29caabf510cae923166dd2496c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:4c95247d6a458a233c97a404d79d7f490940c158d3bd895bf6b7984b26354403
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:98f4fe42a4be0d8f6a1b3440b31baac3092c106c140ec5b11bbce4480597f43a
