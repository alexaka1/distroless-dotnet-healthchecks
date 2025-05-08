FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:dc370aa7d1fd93e0cf812270134f47020a10c60760124b3cfb688c24363109d7

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:fbd654f4557ec46610da320af5bdb85cfb53a88b60e3da6a5e37525eae6b006d /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:a68de0c8416ef2b1738668b0d1a96119ad2a4f6e5c02d212390bd68f0d2ff6f3 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
