FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:fa530e80681e3f20819d01b4f311f846dfd7b6287fa747a1ad34c854f9bc54b6

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:76e926cb8254bd3212445b275dfab1d2da82fe7f7810c9fdf40ae1a85950f52e /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:7b50bf6972de1ae2e4a87cd54677cda11773b4afff127d60638d663b1d4f207c /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
