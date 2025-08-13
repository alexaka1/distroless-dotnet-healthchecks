FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:6d8901fae2d8f44c0e73962046a67fbdaf017bc8a6833c74ae87e9fbd0810b73
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:8ab834cae459cd152c26678fac0a8a8bdf87050e37cefbe405a46970dcd00a49
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:b2f0326ea1fd83bdc15717718fcc061b595ae51f7f2396b3fb2b673651973481
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:3ec44932beb5fb42f6cfb252610e91c3a5f77aec4c2c1f23d229a45079e848b9
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:110c7cc76fc06bcf321d1f822959a998d0022a1ade466a7d5265bfda9a4f738a
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:76b0339a12d7a51eed05d92d61b832a45dbf73c52fcbfeb768930f42cbce6f12
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:9343c5103e875081a433c9d83d2132a8206fd621813858cc07ce79ccc3acf64a
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:3641f2ffaa58a2d1338f43fc0baec3c28ef6dfe4e85c9e646763d477b28c3a64
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:3ce50bdee46eaa7eedb27133d1ef45e9036b66915f1ea8f7b72ce86b59695fe6
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:2936109f18b547c3cde5c5836873c472eb0ba647117f79588bca6666839eb741
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:0fc46e0590a6dc3ae05db07e392d58d7bb4cce089aedc25e2db9cf81f35bb396
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:9516903eeea49d2e7d81174d70cfb5e0ab3aa1ebb101afe76b0edae4fa857aef
