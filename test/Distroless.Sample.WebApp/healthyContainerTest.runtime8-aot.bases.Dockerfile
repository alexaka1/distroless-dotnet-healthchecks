# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:a6fc92280fbf2149cd6846d39c5bf7b9b535184e470aa68ef2847b9a02f6b99e
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:8dc43143942bbefbbcd171e6c6143674cd75c85b4a4972c8aba1844d44eb7076
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:054734a49a83b1feac6d0a1be1fd6a2567b43cfafd59688dcaa429d38a511dc6
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:951bad4da1ffd567d2f21d7d6007a6dbae8eb42b4ae8123f41e2b2c53022e6e8
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:ed15d556ef2c4bde42e1500a05948abd5d6703526434b2734ce11b782d58a796
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:f1d557dbcce59d135014907f648009df4b02527de61aabdf1ab4936852c4f6fe
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:a7e2e8efd3be22a8500ec332d084dc47ae872f4890dc303f5904d00dbbb4a5c7
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:38c87cb9493c6a3388e48a50e3911aacf1cc7640412bc847fbffde001ded7d2c
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:84e5ad8a6716d0c48e8acc4bd17d3751b289dce1c1f29b2345a35bf381c66cac
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:d761617232f15534377fb3889e60a4e36c555e019e6295d8683bbcb08d5302d6
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:16b2006aa56211fd108ed2b93c0bf8eee78b9cd85d383170c787f2f1d9a74f47
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:ca22a8101f867fc36cbfad9b87872d367d072f2b277e7102800b89aa878d4e30
