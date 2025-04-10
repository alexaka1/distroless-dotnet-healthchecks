FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:c3aee4ea4f51369d1f906b4dbd19b0f74fd34399e5ef59f91b70fcd332f36566
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:3a021b5c610d774c84d9b563f097c73222327ba263a81647bc3759d1bb42b802
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:9d93791b3a585850b4f3455d165b8e05ec9fb262e21efad5f334d7ad4f55b84d
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:c38c706d470d4be38a72ef5dbc5911f1d9fe34e6449d2947c1a6d21d1f67d846
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:312871f03d7067b1adc16486db4069db717cd3b0de2253c03dc66e99b891e17c
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:59e933105f2387f675e1c490c898023494ab29b4d676512c95a92c2bf83f1faf
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:140af0fcfb33c6c8983c86af93ccf020b3ed52d816a7169dcfe6886ea6b46b69
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:58c15e710a9661f87708c1a997fd5c57f49cb3090790d48a5e84bf74588b4704
