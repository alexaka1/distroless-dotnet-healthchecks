FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:7269109eb94f0f63cb99179a032d697ee06e5873901b7cd611bcba5553257558
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:cc72f05e52ef9aa829575b074378c141b324de93f4425fec4887938db0a42445
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:519d28b1f35e7060f5ae53d0e43e9522b59522dab51ecef6465af60b94b3ad92
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:4dde6e362c2406982e8f45204f265c4f13f8086216c58a74a5b3f65d4995a974
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:18d46d32a59af780b8776735263fb852c05ccf8a1dcf744692ad71a8b4056e91
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:68b4e4d08bffa79522d713b531ba365e974fb4f8a711d14099195e40d2eda5b7
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:a243d3160a31711eeb878d27d7fb3405ed724b9779b02630eacd8abda3eec93d
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:8f3c2d300e86da9f2e2a3a9762bcec708f9a36283c73c4fb54febf336cf5d90e
