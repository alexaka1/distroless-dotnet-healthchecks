# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:9fcda0af05373f3c67cab575a3490135716ea426550053590776ad6ef3e2b4eb
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:e236bdc19ea900d592647d343d51ef74add92bc0f5e12dc9042ff5c16e4ce6f2
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:4090127a0e87766027215be3c146bbb29ed13ef35fdd6deb26f1359e790922c5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:ec74f8cf89ab25aef3883de6ecca9f3b9dcbec6122455f8395a07be55a11dd14
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:76654781b37e63b13c358bebc3b0551f143ef6f545c0ab8bcee150d2e6f02071
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:c345bc562dbca3c68458a8ebbef4f01d963b9a3959aa34e9b6d9fad38c25acd8
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:98f9d2815dff09bd62b92ce59b42e8a790514b26251191a51d0ffcc6a94d38f1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:473b8b8f003602ae0e6f9854431e308a7361aeb62ffd1ccbbe97f25f9abb55af
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:f2444ebf6adc1b1a6992e034a154d9063e2d1ce616a87ab205454385bc7635a1
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:5264a99a1337d7c1710ac3378379cb5a9ebd2435a9bb51cee217be4504ad99e1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:5120126442d53009f8fc6aa970dae766a502601cfd9e2f38ad51d98147d9da1e
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:8f13eab02b6a84cb6822cea3b19838ea5cb82d9659f3179205566816a0161161
