FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:45442a9fb58a5b005db0e505081a6028cede58beaa0c987ad4f22114eb0c6672

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:671e9bcc826a401a7b6f3d089bc5750a613d1978c86683585e8d61111074bb5a /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:a055d11dbf586053f0f3552f4296a36df09a58022ee449641ef471c3a8e3d3b0 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
