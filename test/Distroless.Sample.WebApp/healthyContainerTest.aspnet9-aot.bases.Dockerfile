FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:c3aee4ea4f51369d1f906b4dbd19b0f74fd34399e5ef59f91b70fcd332f36566
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:3a021b5c610d774c84d9b563f097c73222327ba263a81647bc3759d1bb42b802
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:9d93791b3a585850b4f3455d165b8e05ec9fb262e21efad5f334d7ad4f55b84d
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:c38c706d470d4be38a72ef5dbc5911f1d9fe34e6449d2947c1a6d21d1f67d846
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:12bffdc6c9646fcb4ba9d8f07373037448999d146347433f22c34bd24667e501
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:71c958c102c1747ad89f1e851f7d41ccb5e07e5227e8aabbebe1853c931e98c3
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:ad6df3cad4a19098fbac4c582ee4e3f05e8889b6e4c8f6c4fb913c1f4b1fac7c
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:bc78cf9c8db49a5fda74c6dab0e8d357a949f240bd394d88b037506fe11fb323
