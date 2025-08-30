FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:45442a9fb58a5b005db0e505081a6028cede58beaa0c987ad4f22114eb0c6672

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:9.0-noble@sha256:0b7186a7247bf8c07085fd700613bb0425a6f8f6467a0342c12a535e767da803 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
