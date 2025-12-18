FROM mcr.microsoft.com/devcontainers/dotnet:2-9.0-noble@sha256:5a3911be72a3a52b21538ebe7e15ac0264e93e56f1248674c8b669953c98cdce

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:40f506a5e0dd2f747add8006bd2bd0a3b7080c7a3607c0a3ae036be620812189 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
