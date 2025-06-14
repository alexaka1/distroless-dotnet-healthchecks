FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:1e12c265e1e1b3714c5805ab0cab63380eb687b0a04f3b3ef3392494a6122614
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:b29bc91c3a8d5ace649864b724ae0cfed65201b4a31f591c49158204d5798c8e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:65ac626d0095036e7c477e610ed32e59822992c0b207c95444ef22d455343f4a
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:7aa4a1866c216d4269e27a96f827d124a22a7ad3e3a0da0ac6aec16d354877da
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:0d82dbd0fd3745f09178548cc14d204881a52521a10ddd4b06afb4bd29bfddd8
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:af481748f0516aa804a30382d70cf21c40e99b2d3511ce4de18e8806be7dc708
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:7410723e3638217cf1e081f012aaff5202ba3e38e8715d2301c08f9cef8160a1
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:f7fb3834ba763a49f0d25cf8c93bd46a19f9ebf0d68a1755087b09892b777a97
