FROM mcr.microsoft.com/devcontainers/dotnet:2-9.0-noble@sha256:107c3d89a61e2055bb7c6ddb80525d90934eff0b20c71756879a966e0bb0cac6

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:16411e23fa6602381d54c1926a44d934bbe0c7fb680319c89bcd8f0e360a12e6 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
