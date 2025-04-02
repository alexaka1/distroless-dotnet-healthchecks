# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:a6fc92280fbf2149cd6846d39c5bf7b9b535184e470aa68ef2847b9a02f6b99e
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:8dc43143942bbefbbcd171e6c6143674cd75c85b4a4972c8aba1844d44eb7076
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:054734a49a83b1feac6d0a1be1fd6a2567b43cfafd59688dcaa429d38a511dc6
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:951bad4da1ffd567d2f21d7d6007a6dbae8eb42b4ae8123f41e2b2c53022e6e8
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:ed15d556ef2c4bde42e1500a05948abd5d6703526434b2734ce11b782d58a796
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:f1d557dbcce59d135014907f648009df4b02527de61aabdf1ab4936852c4f6fe
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:f5688df4fb2ad725ff4ea8176c7ea52d80978d5d244c903061e10c4a5bbf3dc2
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:d72e9c2b95f315f4c710fdeaa9a19a9bbf6e98727c447530ad56a145dd0204be
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:f1586dc35a72d7047e53a2f9bab822ce14e75eb4adcc064c8f593190cb9f9d50
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:a65cf41914ba34be1e72b759e805f7827de1e7c3b97e4cb42fe8ec78e0d959cf
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:2b086fdb6a5ec3a9a2f486522e3baee680877c04e8c3a25cc95151947a01068e
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:b1c049342c03667d15417ff1358d481370fbb3d6fd5784261771c3159ed2bd89
