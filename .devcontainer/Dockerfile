FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:fa530e80681e3f20819d01b4f311f846dfd7b6287fa747a1ad34c854f9bc54b6

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:a48fec0a1449a2197ed7a1d864a648169b0201db15a5c056e32035a1f44c9779 /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:7b50bf6972de1ae2e4a87cd54677cda11773b4afff127d60638d663b1d4f207c /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
