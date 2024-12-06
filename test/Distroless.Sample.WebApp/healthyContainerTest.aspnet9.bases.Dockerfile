FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:bb169ddb6f72aa871291355f3aa9810959f2653e694101e4bdc0e33ffbaabf4e
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:77e998904a5ffc8fcddd963a837ab3a3caf49efd55b4acbd236e65f729035dfd
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:bb011484fecd91e4ac06bd39f7c89ef8e2ad88f00e3c7d4705f67deeaa049f9c
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:013eebd2fb4f8336f398d97f34de6a3b87928b919c775f5009ccbf2cccd83662
