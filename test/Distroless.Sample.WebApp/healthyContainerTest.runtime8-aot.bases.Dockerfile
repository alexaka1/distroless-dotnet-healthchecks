# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:bc5f43feda0c5f989b0f54f04f75ea61f42db0205349a030dc7839a36c8fdb11
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:6ad74b754d2481bfffd3e44672bf2b99bd782ea1fd80ef3afff7c90435ee7c92
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:cb9fe6a1b315de7baddca90a1aeb348ce0931d8edb38d19d67f9fe2faf093a07
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:cdf5d41d3d7db3ad8a82b6f88b3af189ca0cbbd254d403fd10e47380d8a97751
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:194d6dfc55506a78699fc022913dd498ab8ebd8d513f883cfe6e76a10e5789a4
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:3f59f76516184a15b6da7ee55e1436e5cbe5886c98435b52b399274912172fdc
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:c0fac8b4ac20f7d4b6b1c61f8791850eb4638374addfa05d72ed622b88691aa5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:97969cfb5690436226e5e98793a29597bddfa83a4d28b00c77c4f114d208ae04
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:21c6c33e5609dd1e5a7140a0098c332c03a6cffbe813fb2f579dca46a4917c36
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:bddc777bd03b992f5e785957695b27fbfebddbaafb409d4ffc8b6c54c0326340
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:0c819e6dc90230070e4da395a056d863ef67e2b9584054f9a120a31b56626a16
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:c876fc83030cf3250dc5f6fc18ea6a53c8bf6c796cf225253cf69859ad25d222
