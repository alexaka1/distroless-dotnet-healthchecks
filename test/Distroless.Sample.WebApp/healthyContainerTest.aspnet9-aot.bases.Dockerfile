FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:b4bea3a52a0a77317fa93c5bbdb076623f81e3e2f201078d89914da71318b5d8
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:5ffc0201e3f8e3b36fde2c0453deecf3da636b17ffbb70f0526fdfa85a70e0a8
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:38a284add1735bc68b855431ba9fa6b19e0f0dae7420706b963920ac070bf656
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:7458012279bd96c8f8883b9fea1418817a31d69efc61059f55ae6b44bf36c7ba
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:5ed063f02357e56ff7277196fc2852bbe7158741a51a689827ee9a58e5848092
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:b5f6081bce05bd3f1a2af5a6718c4a7f86638811847fa96caff8c7386f0da2de
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:bce13136ff7df6f5718c7a0ac208cc190fc6dc9f0c4e4454648551f720891866
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:cfa99306426e1cfb625e94f1b69fbe92736504f42e138e8f558ca9743bc3a037
