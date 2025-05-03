FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0-noble@sha256:fa530e80681e3f20819d01b4f311f846dfd7b6287fa747a1ad34c854f9bc54b6

# Finally install the most recent .NET 10.0 preview using the dotnet-install script
COPY --from=mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview@sha256:61ed126a805658cd70f116f23625ad4e18460bcf35091079991dc991fd19164a /usr/share/dotnet /usr/share/dotnet
COPY --from=mcr.microsoft.com/dotnet/sdk:8.0-noble@sha256:a68de0c8416ef2b1738668b0d1a96119ad2a4f6e5c02d212390bd68f0d2ff6f3 /usr/share/dotnet /usr/share/dotnet

RUN sudo dotnet workload update;
