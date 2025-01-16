# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:312b67256e903c2cc175e5390245dd77c427527a20e83c6e0389e6e1e8e5a033
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:e0ad6fc8f41318976f02c48dec8bc63faf938915bd2ca59d150bd7561be374e6
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:9cfa840cebf76974d274d3a81e772b83d332b0d98941b9367bf53a072ad3809c
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:301240025bf84c623c7db49c8481ec4ea19d38ab0c31c8b05450918abe420255
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:8072f768d3dddf30356c53cec9c477d302966b65b23a06cb4318cee4aa217ce8
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:a6960aa52c9c40ccd44c19313b471d94ac3fec9277d7d238caab347bc237dc62
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:59b776e4385a68ac7095f90e9902614032514360de5388c5170d130fb5303882
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:f82e39de65caae890087ade5090e01e0cd7d191f9d5aaa1f7f46d737db3f5514
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:ca310b29ce9f357db328f65de5557d1f1aabe14f5fc032bfbf4013a67ad3cf48
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:aee12c77c903ad3b210bf3a1a9f3420ea878cc2968f445f1a7f9737c90b71696
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:d6b4461e92617f6523c6888d8294679dc3cb3f2386fcf2b8664b271981f06a57
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:a4ffd9158f700e03dbe5fd326b7704289bdacf7a2ef3b256877da0f7e06d8123
