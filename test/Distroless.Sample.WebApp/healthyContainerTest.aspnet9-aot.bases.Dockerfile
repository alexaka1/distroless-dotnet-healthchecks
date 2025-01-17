FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:07dd7f0c45263fee87e094b1e627b33a095f75c54be39c495de23b82b0936b9e
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:9ad49a26cada9c52edd49541624a1b0bc188d76528e80482365c59f6fa13103b
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:2aae5a49d55c1d7eebabca26f60a5208071142884fdf26cc2f087ac52685c5c2
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:136d023eb450583ca2636dd83bb11476bd8a932c685b6da0dd4fa3447671302b
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:4910921d51f830d6120c29179bfc903bdb91787449776c895aee7b4915f1f7b0
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:37b3b16a33c1c3fb2507cf17d00c813a374b80537d3f88565283d4cde55927c3
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:7badc03b0218059950b6ad86344a3d3ae41870b34da690b413f8530739c91d19
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:e1770a13506e8f803fee00bd163e9cbfb4e5866877b804507b76d02ff02c2def
