FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:45442a9fb58a5b005db0e505081a6028cede58beaa0c987ad4f22114eb0c6672

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:579800845a10f4c73448f32d51235d2814fdd2e7fe7b3fd03aa94d5d964d9c24 /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:1b9adb68e8380cbf8e11d75855653293593120247951b14310febd440df8b2bc /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
