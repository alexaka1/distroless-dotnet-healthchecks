FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:4f0ad314f83e6abeb6906e69d0f9c81a0d2ee51d362e035c7d3e6ac5743f5399
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:182a7a7ed24f7089eb49cd17cfb94285a4d8fb1570987193cabe9344aacb7b68
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:dba2cfa6a751eac6ecc5371c2f7f08cad711edbf465afe8180c60be2853e7a5b
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:c9204b63e0dbf83446d47b378d9ea5aed82d5b387f57a4930a4637dd0fc104c3
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:312871f03d7067b1adc16486db4069db717cd3b0de2253c03dc66e99b891e17c
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:d497f2380a1f5e55673c1fbd5499fdb8a02f04190d500489ee281fba6adeab54
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:267d482080a8413b4b4f6f8d4a722d45ecb4910aab48dc7330d20b0f711fd2cc
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:58c15e710a9661f87708c1a997fd5c57f49cb3090790d48a5e84bf74588b4704
