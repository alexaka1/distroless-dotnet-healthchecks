FROM mcr.microsoft.com/devcontainers/dotnet:2-9.0-noble@sha256:0ad2162ac118006f1ad42a254297765cba62d38ee66fd65145dc4fbe48dcc937

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:d582c7052a557c953858a3e2f77d4dd6fc184dcf617b14cbcc426153fcd450d8 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
