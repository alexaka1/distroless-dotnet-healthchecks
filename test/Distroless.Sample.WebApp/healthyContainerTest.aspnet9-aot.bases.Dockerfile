FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:d8f01f752bf9bd3ff630319181a2ccfbeecea4080a1912095a34002f61bfa345
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:088655e4b9bd41d72e9f6d3ba96af5f556b217bf8cac7f26b002a27db0693530
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:d24db805712b6bc67f4f18a50d3659fc9f8014dde1b36494c98f0159f6d1542f
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:d4094ea269281f20ba59da6d965268ee701b60f2c9a002fc9f0ae2d4dc6cdc98
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:c95f58f114a2c908df53dd34d6fa9fcc3406da15e262fb6c549e10c8ba67fc04
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:a5207dd532102cb8fa130f4c763ab292314a514691c81aaf3c0f5e50ea4b5d85
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:9da50c6218f33b209f6d140d8172f0e0c489cf8c40ca9a4ad8b3f1139088fb1e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:e0982c1ced75dcb6b9d3cbdc7cae139356b5200cd25070d3717165c3ace8d435
