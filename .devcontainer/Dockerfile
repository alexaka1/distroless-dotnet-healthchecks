FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:dc370aa7d1fd93e0cf812270134f47020a10c60760124b3cfb688c24363109d7

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:636a08a1377f2695820d924837f100449896655bd33bd6e74bd4f6d0d05051e2 /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:a68de0c8416ef2b1738668b0d1a96119ad2a4f6e5c02d212390bd68f0d2ff6f3 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
