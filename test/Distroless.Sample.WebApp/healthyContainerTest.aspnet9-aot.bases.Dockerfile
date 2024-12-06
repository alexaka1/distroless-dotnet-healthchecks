FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:bb169ddb6f72aa871291355f3aa9810959f2653e694101e4bdc0e33ffbaabf4e
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:77e998904a5ffc8fcddd963a837ab3a3caf49efd55b4acbd236e65f729035dfd
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:bb011484fecd91e4ac06bd39f7c89ef8e2ad88f00e3c7d4705f67deeaa049f9c
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:013eebd2fb4f8336f398d97f34de6a3b87928b919c775f5009ccbf2cccd83662
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:c95f58f114a2c908df53dd34d6fa9fcc3406da15e262fb6c549e10c8ba67fc04
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:a5207dd532102cb8fa130f4c763ab292314a514691c81aaf3c0f5e50ea4b5d85
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:9da50c6218f33b209f6d140d8172f0e0c489cf8c40ca9a4ad8b3f1139088fb1e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:8836a6c394f90a302a1607abc8430c5b3fa57c75221ba78269a81dd845d86834
