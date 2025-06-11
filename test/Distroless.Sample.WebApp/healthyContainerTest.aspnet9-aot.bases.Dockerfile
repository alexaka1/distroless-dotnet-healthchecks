FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:1e12c265e1e1b3714c5805ab0cab63380eb687b0a04f3b3ef3392494a6122614
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:b29bc91c3a8d5ace649864b724ae0cfed65201b4a31f591c49158204d5798c8e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:65ac626d0095036e7c477e610ed32e59822992c0b207c95444ef22d455343f4a
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:7aa4a1866c216d4269e27a96f827d124a22a7ad3e3a0da0ac6aec16d354877da
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:485a6a5364ad22964dc6062fecaed731ccbe24e165487676041b05153deb4bb0
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:bf8ee896409ab110f0a8500693f291987339bed7c4ae1fcb99431e2d92df6206
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:c8f8eb6dc5d2a38689dda7bb0ee5e998c7c1e224ec64828a5e4f5c4f414ffa34
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:8535c79cd61afbfeb0f059be070e529ae380ac63085704e7fd6ffee943c02410
