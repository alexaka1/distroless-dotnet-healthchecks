FROM mcr.microsoft.com/devcontainers/dotnet:2-9.0-noble@sha256:c01fb5320c1022a32892a6ff62ccab54a164e0ab7b8a4be08e97fb5c74b6223e

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:2734bc88063e3891681fe14a6fb509cb3d91560d8d6b9b53c5bef5ab2ad469da /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
