FROM mcr.microsoft.com/devcontainers/dotnet:2-9.0-noble@sha256:faabbd9a48dae5b9d2b907ca251391c4810272ffcb128a1153a3a2849df3bac7

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:5bf930ce25f73d9ad70e03eb798cc1b3c415bf5434f419237ee20064e560df0a /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
