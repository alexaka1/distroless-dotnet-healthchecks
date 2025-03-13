FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:c013be6e8c5219fa56002ad96aac9d99afcca23a185aadd0a30e9b4f3d6efd8c
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:58f945fa31c3fb6af3291cb832236eaa62ebe842733668527737462d4d655e2e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:dba2cfa6a751eac6ecc5371c2f7f08cad711edbf465afe8180c60be2853e7a5b
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:e22d449fa6b60a40865f5fb77e4c454f7417d6a2b724e784741a46a43504c510
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:49ee0ee63f5ff13e06dbeeef274df65641cddde4883f62830af4ff977b03f3d7
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:06c14f258800c2b40810d50bc01b2aedb37a704d3b2d6560802d77bf8d9cb64d
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:ea0aa5e2348d10592c814fdc24a0745091efed97a43fede8253bd492f4fa65d4
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:b9cbe05c8cbdb571f85031d6a6caa346d6dd2fb9de094bef0db7f439df6aa1e8
