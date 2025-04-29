# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:72f6af5666200b0005738f8637bb1bb4e5fee3a0dbffdba7cd4eacaf526d03c2
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:2025bfbbbe8af580444eb1d755833198b77f0fc943484eaa2eff34b52d29f526
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:07ab0581cdc7f7aea08d09c2553bbfea2390cb55bab5b13dccb4c01f0306883d
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:cdf5d41d3d7db3ad8a82b6f88b3af189ca0cbbd254d403fd10e47380d8a97751
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:194d6dfc55506a78699fc022913dd498ab8ebd8d513f883cfe6e76a10e5789a4
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:3f59f76516184a15b6da7ee55e1436e5cbe5886c98435b52b399274912172fdc
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:7d484776dcbf167391f1a27e113bf4e225bb330d103c8482c4f92fec8bfd763d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:2e64240dfa2af4f7cdf49826baffe14495b09207ed78527c4accfd20240fb68a
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:3ed568d3736e0761e0ce5776cbd0b1ff3d91335646fad83b35d7ac8deeb0e762
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:bddc777bd03b992f5e785957695b27fbfebddbaafb409d4ffc8b6c54c0326340
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:0c819e6dc90230070e4da395a056d863ef67e2b9584054f9a120a31b56626a16
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:c876fc83030cf3250dc5f6fc18ea6a53c8bf6c796cf225253cf69859ad25d222
