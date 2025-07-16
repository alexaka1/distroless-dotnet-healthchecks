FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:1e12c265e1e1b3714c5805ab0cab63380eb687b0a04f3b3ef3392494a6122614
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:b29bc91c3a8d5ace649864b724ae0cfed65201b4a31f591c49158204d5798c8e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:65ac626d0095036e7c477e610ed32e59822992c0b207c95444ef22d455343f4a
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:7aa4a1866c216d4269e27a96f827d124a22a7ad3e3a0da0ac6aec16d354877da
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:18d46d32a59af780b8776735263fb852c05ccf8a1dcf744692ad71a8b4056e91
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:68b4e4d08bffa79522d713b531ba365e974fb4f8a711d14099195e40d2eda5b7
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:a243d3160a31711eeb878d27d7fb3405ed724b9779b02630eacd8abda3eec93d
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:8f3c2d300e86da9f2e2a3a9762bcec708f9a36283c73c4fb54febf336cf5d90e
