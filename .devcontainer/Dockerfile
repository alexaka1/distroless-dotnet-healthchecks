FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:66919648b05f30ac3b2f1c4008d0f255b7b4cc7ab6fa33d137ac8be9d600a931

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:edbf0a0723f1be3261e7122a54afaa75bba09f59d4a8330cfe3baf0288c61d1e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:26739968183da87d94cb820218a0a2300683e7857ae2bd5c7fd587cacbd08c19 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
