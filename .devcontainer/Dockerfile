FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:45442a9fb58a5b005db0e505081a6028cede58beaa0c987ad4f22114eb0c6672

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:1b9adb68e8380cbf8e11d75855653293593120247951b14310febd440df8b2bc /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
