FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:d8f01f752bf9bd3ff630319181a2ccfbeecea4080a1912095a34002f61bfa345
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:088655e4b9bd41d72e9f6d3ba96af5f556b217bf8cac7f26b002a27db0693530
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:d24db805712b6bc67f4f18a50d3659fc9f8014dde1b36494c98f0159f6d1542f
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:aa201a40eca8c6ee93b96f16e38fd22772da3b6187759e33f8e3440045d08534
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:a18ca26f358cb17a46b5e06979b3f7ed787efc58398dd2b5f59c0dd57a67fa87
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:89ae5cb452966242c26fadee9a69944cdd4fc30bb51633975d63316271470b9b
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:35fc63abc48046b9fd4d9caef1029bf3f2697b215d9fc102459f43464a71eb2e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:528e22e5c86d8782efaee8fec844aaa082849bdb163568e99e0cb274241ad369
