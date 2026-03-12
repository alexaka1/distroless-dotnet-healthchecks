FROM mcr.microsoft.com/devcontainers/dotnet:2-9.0-noble@sha256:b451a09868e922a3d0313c262311c8ad227fc5df0ab77770e7173c2d15053908

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:ad8217434511581f7a902bb1ff90779e099b176b8880cd15dd97e930be0cb6a3 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
