FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:f77d967b8c3ec67b9af4bf577177c1a350e4f769618ff419f632b674edfa9be8
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:d44d3e474e5c210b5fab9943833027e4d453b74ae533c2b8f511688c2326dd3e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:2aae5a49d55c1d7eebabca26f60a5208071142884fdf26cc2f087ac52685c5c2
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:c9937dafa47d55f3568c38c4e09417d4b986047dc2fef1d5cc707793c0682e56
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:c7228ce6e099cbbc351118a9bc3157460aa6f3237f00cdb20c2904ebe7746d25
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:5b69dee7b9176378fb773d35eef6d2a2f4a04890f5e1d965c8d1265153aba655
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:7badc03b0218059950b6ad86344a3d3ae41870b34da690b413f8530739c91d19
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:e1770a13506e8f803fee00bd163e9cbfb4e5866877b804507b76d02ff02c2def
