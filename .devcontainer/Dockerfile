FROM mcr.microsoft.com/devcontainers/dotnet:2-9.0-noble@sha256:a322dd17f944c87cc841f4b440fd1665d3a7228811ea07ed17d7ca6d760497bb

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:08f003ba31fca1aeed32d5a076f62dc3b592faa0a811b072aa245321dd09f0ab /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
