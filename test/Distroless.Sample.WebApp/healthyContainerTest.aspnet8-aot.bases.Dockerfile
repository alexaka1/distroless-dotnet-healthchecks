FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:6d8901fae2d8f44c0e73962046a67fbdaf017bc8a6833c74ae87e9fbd0810b73
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:8ab834cae459cd152c26678fac0a8a8bdf87050e37cefbe405a46970dcd00a49
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:b2f0326ea1fd83bdc15717718fcc061b595ae51f7f2396b3fb2b673651973481
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:3ec44932beb5fb42f6cfb252610e91c3a5f77aec4c2c1f23d229a45079e848b9
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:110c7cc76fc06bcf321d1f822959a998d0022a1ade466a7d5265bfda9a4f738a
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:45c4fb5a68595d2bb94d84e1b67f7d50ebeaff6c60d8d3d8e71b676d2ddaff6b
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:3cbe06a3dabc110410cb302920390bc31a98855a42b8e4dcf86cdd73860fa1ce
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:df70658e15f7656348b5087907c5d8140b0663591b6dee3354caf48893c3f592
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:55430222b68be2280b22ffd83f49aa8323ecb7b16d3705438ea452c1d5b68e31
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:a2e93e5b5610f069a1d14431721dfbf8680e85b0c110a8cac75a63e2f3df2a58
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:d429f683583a29c9feeb625d88d970e61d067f98015eae252160c79d746d5180
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:16efc2eb5354c40c9dc70d3476202043385492ca427aa7600b60c2e663391fb0
