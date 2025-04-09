# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:bc5f43feda0c5f989b0f54f04f75ea61f42db0205349a030dc7839a36c8fdb11
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:6ad74b754d2481bfffd3e44672bf2b99bd782ea1fd80ef3afff7c90435ee7c92
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:cb9fe6a1b315de7baddca90a1aeb348ce0931d8edb38d19d67f9fe2faf093a07
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:cdf5d41d3d7db3ad8a82b6f88b3af189ca0cbbd254d403fd10e47380d8a97751
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:194d6dfc55506a78699fc022913dd498ab8ebd8d513f883cfe6e76a10e5789a4
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:d6bc641f54974329e24b4eab92c3636ac764d990fdcd02ae36cdf524df0db9b3
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:f5688df4fb2ad725ff4ea8176c7ea52d80978d5d244c903061e10c4a5bbf3dc2
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:d72e9c2b95f315f4c710fdeaa9a19a9bbf6e98727c447530ad56a145dd0204be
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:f1586dc35a72d7047e53a2f9bab822ce14e75eb4adcc064c8f593190cb9f9d50
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:a65cf41914ba34be1e72b759e805f7827de1e7c3b97e4cb42fe8ec78e0d959cf
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:2b086fdb6a5ec3a9a2f486522e3baee680877c04e8c3a25cc95151947a01068e
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:b1c049342c03667d15417ff1358d481370fbb3d6fd5784261771c3159ed2bd89
