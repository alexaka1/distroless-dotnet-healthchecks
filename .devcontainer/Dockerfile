FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:4a43c03256b1ec2f60e6bcc8056c4a23c13fe0131a0ff09c4d96366ce52fdb36

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:ba1307e8195da3f71b266c57be8479deba54816cbe60fd79d56f699bb031b336 /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:65b1e74faf14ae8dba77f48407fa7f7934f911ebef63cb5e04c5003d8e533f5d /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
