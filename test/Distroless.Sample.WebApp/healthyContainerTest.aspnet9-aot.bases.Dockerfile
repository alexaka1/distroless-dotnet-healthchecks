FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:07dd7f0c45263fee87e094b1e627b33a095f75c54be39c495de23b82b0936b9e
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:9ad49a26cada9c52edd49541624a1b0bc188d76528e80482365c59f6fa13103b
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:2aae5a49d55c1d7eebabca26f60a5208071142884fdf26cc2f087ac52685c5c2
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:136d023eb450583ca2636dd83bb11476bd8a932c685b6da0dd4fa3447671302b
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:5ed063f02357e56ff7277196fc2852bbe7158741a51a689827ee9a58e5848092
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:b5f6081bce05bd3f1a2af5a6718c4a7f86638811847fa96caff8c7386f0da2de
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:bce13136ff7df6f5718c7a0ac208cc190fc6dc9f0c4e4454648551f720891866
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:cfa99306426e1cfb625e94f1b69fbe92736504f42e138e8f558ca9743bc3a037
