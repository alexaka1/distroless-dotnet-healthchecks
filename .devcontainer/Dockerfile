FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:45442a9fb58a5b005db0e505081a6028cede58beaa0c987ad4f22114eb0c6672

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:da7aee2080c672e37dfaf5fc62286c51d566129a2278425a0ec5b4620f7335c1 /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:c9a9fd6312801f4f57eb8cbb6f25c078feba76065feb2d671454dbc01c8f3601 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
