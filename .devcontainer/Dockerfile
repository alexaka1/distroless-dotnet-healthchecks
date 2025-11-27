FROM mcr.microsoft.com/devcontainers/dotnet:2-9.0-noble@sha256:27b825355eca5fa6ecf170d53fa962abbffa6ea98cd9a70f76d8fdfb47c9e983

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:87b402d5e8cabe2de30d185e94ab8c1159df55878e5a69e1309c36855aa66427 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
