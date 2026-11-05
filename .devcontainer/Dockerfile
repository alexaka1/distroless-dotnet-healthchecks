FROM mcr.microsoft.com/devcontainers/dotnet:2-9.0-noble@sha256:a322dd17f944c87cc841f4b440fd1665d3a7228811ea07ed17d7ca6d760497bb

# Install targeting packs used by the test and sample projects, then .NET 11 last so it is the default SDK.
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:42eb9e70b190d0cca893d93724e67fb89e7570e4309c4b1c20b7f6016a90202d /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:11.0@sha256:3a9175b6c54b2f076817af1360f691c9994447b192faa48a1a1f112a516844c7 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
