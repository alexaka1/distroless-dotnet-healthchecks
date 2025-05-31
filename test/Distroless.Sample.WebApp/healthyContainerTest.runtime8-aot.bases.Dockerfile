# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:9fcda0af05373f3c67cab575a3490135716ea426550053590776ad6ef3e2b4eb
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:fd2ee6eb1cf013a0c555b5a0c530a7bc873a39effa2227def876c0291e4b3906
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:d17a32eae344cbef13b937b170ec7747332f739c0b142af0a81c447225145a4e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:ec74f8cf89ab25aef3883de6ecca9f3b9dcbec6122455f8395a07be55a11dd14
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:76654781b37e63b13c358bebc3b0551f143ef6f545c0ab8bcee150d2e6f02071
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:c345bc562dbca3c68458a8ebbef4f01d963b9a3959aa34e9b6d9fad38c25acd8
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:98f9d2815dff09bd62b92ce59b42e8a790514b26251191a51d0ffcc6a94d38f1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:5ceac632a20b42d0a8396e3dac26c013a265519332971c621cf31edc1f3004b8
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:f2444ebf6adc1b1a6992e034a154d9063e2d1ce616a87ab205454385bc7635a1
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:5264a99a1337d7c1710ac3378379cb5a9ebd2435a9bb51cee217be4504ad99e1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:5120126442d53009f8fc6aa970dae766a502601cfd9e2f38ad51d98147d9da1e
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:8f13eab02b6a84cb6822cea3b19838ea5cb82d9659f3179205566816a0161161
