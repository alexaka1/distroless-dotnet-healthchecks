FROM mcr.microsoft.com/devcontainers/dotnet:2-9.0-noble@sha256:c5baf99552f13287e7b9bf2a223dc3ead1dd56e17d834f87ec3a9d74a2e72263

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:d1e5dd229d0d1d936df1273de6ff4b7114a39be127f0b1dfb0aa61fd922d3b7e /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
