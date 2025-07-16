FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:45442a9fb58a5b005db0e505081a6028cede58beaa0c987ad4f22114eb0c6672

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:c1e95ddcc19cd3f5325b67bffb7887d08649870408cb222c9b31bf46770b66b6 /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:bf42e7f4c0375139edc9ca033f76e3c3878255f1384444c6e8b2207649627a6a /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
