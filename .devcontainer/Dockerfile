FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:dc370aa7d1fd93e0cf812270134f47020a10c60760124b3cfb688c24363109d7

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:803a74daa30dbc183529888ddfb8321eb4cb038b502b1ba3cc72be3a0b7b207f /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:fc78a0982851983901383816202b604f689fcc19df9c861a6f587fba4e98dc2d /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
