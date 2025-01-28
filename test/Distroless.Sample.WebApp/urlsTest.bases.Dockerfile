# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:bfd59a980e332c77ad135ff7594f605f444994eb182adf95a6b446f9bf99dc6c
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:44eb2f932c0a5e6498eb843d3048d0fffea250b43992c5cd461373e7c7e248cd
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:90886cef7739adae0b4f4a891ed1a34bd103b0efec18f8e6a5870ac46f534872
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:6f7466eda39e24efaf7eab2325e15d776a685d13cc93b4ea0cde9ee4f7982210
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:b341dd6c6a33f92ff12b4b638db5c73b9145f88843a96ad3b990bb0d84cd696c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:73416e97ccdc4d20b0922c078fccf71dd05ac45346857e7abea89b3cc92a82da
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:c2b6a0b8b3d55607deef1449229c0f3e8ce885e2b9a52be947fb38af8b4b5758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:71c045016f09a307fc39f4738e3fc562b0124c9e540eb519ba290a0724c8cf70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:72cf81e414066174ca5446ddf506f1362132e319a069b81bdba70a3005d7bd2f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:1d666b7bc36b0e179d4bcf0db89b6d35e8f7b58820b4ebdb752c83cbd6921b4c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:716f5a59534a1a93edced745be5b2ba78f5a3a29caabf510cae923166dd2496c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:4c95247d6a458a233c97a404d79d7f490940c158d3bd895bf6b7984b26354403
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:98f4fe42a4be0d8f6a1b3440b31baac3092c106c140ec5b11bbce4480597f43a
