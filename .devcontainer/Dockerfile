FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:45442a9fb58a5b005db0e505081a6028cede58beaa0c987ad4f22114eb0c6672

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:de91dc1610de62fd4e6b1cc2c1dd9aa2e6f4ae94d38c5e62fec2e9f9ec8ea5ff /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:4c5da187e7985b12a332d1eb2815550e7f72cf13558c33b1cc4b31f88d5cf9ec /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
