FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:b4bea3a52a0a77317fa93c5bbdb076623f81e3e2f201078d89914da71318b5d8
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:088655e4b9bd41d72e9f6d3ba96af5f556b217bf8cac7f26b002a27db0693530
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:d24db805712b6bc67f4f18a50d3659fc9f8014dde1b36494c98f0159f6d1542f
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:d4094ea269281f20ba59da6d965268ee701b60f2c9a002fc9f0ae2d4dc6cdc98
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:5ed063f02357e56ff7277196fc2852bbe7158741a51a689827ee9a58e5848092
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:b5f6081bce05bd3f1a2af5a6718c4a7f86638811847fa96caff8c7386f0da2de
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:21ee67e3da51186da8e57b04bebb3a47077ef0aa45c4cb0b9e214ab30ed99403
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:5eb7fa0ad45b2422f16e9b19144e77590c560f5e95b3f16ca3ae0c528581c268
