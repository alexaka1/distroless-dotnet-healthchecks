# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:1c73afa09b10d05faec4520894b1d155e61ef52d151e84e4bc3ef4ae0eda8ab6
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:ba3a6c0e8707e4a33277fe998fa8dafacca74503bc7cc4eaf36d136c68dcc513
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:5cc8734767c61b1ba4c0a98362ab3bf62860aec79510eaa230a5e8f0b553209d
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:044fe2ff5bde4399398132f685c268003603a969549d81e413aba4c0c6d21dec
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:f50b13c931ecef4538f75f98b417947085ec03c697a4df167306ff30ff81e43f
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:76a4fdec888530359ec881830a840be19b5fdc65f4c0abfe721ecea526b67bf6
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:59b776e4385a68ac7095f90e9902614032514360de5388c5170d130fb5303882
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:f82e39de65caae890087ade5090e01e0cd7d191f9d5aaa1f7f46d737db3f5514
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:ca310b29ce9f357db328f65de5557d1f1aabe14f5fc032bfbf4013a67ad3cf48
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:aee12c77c903ad3b210bf3a1a9f3420ea878cc2968f445f1a7f9737c90b71696
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:d6b4461e92617f6523c6888d8294679dc3cb3f2386fcf2b8664b271981f06a57
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:a4ffd9158f700e03dbe5fd326b7704289bdacf7a2ef3b256877da0f7e06d8123
