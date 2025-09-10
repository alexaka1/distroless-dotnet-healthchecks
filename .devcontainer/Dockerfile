FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:5109d2379a0a5348f0354dcc44c514085bed083c963a28e3f5989237c7fd4b56

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:e9a4247229b434c385436f64218c2d7826e8a844111173c01ef63d735b648d8e /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
