FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
