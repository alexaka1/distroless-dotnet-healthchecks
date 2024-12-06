FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:73ea3fd522ad58faf34e1072f586e19ffd4251564bc718a952af77f2211b24dd
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:8dbc372f664eb193859b317c149544a3461ea2d1ba764287bd785d5ffb638c7a
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a0779b6c14669ac4823b6786940abf37455968ef8bba91af87ceafc591d10769
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:79bc32dc11599ea00da0c5ce286a34c92e3225421d7a80e69a74217c08cd14a9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:d81933c081f5f241947f7fb3d19a876f0fb0400d8f022f98e7920fa0f207b4e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:1315d63cc3c5b315e1896ce3a273216322331763384fd2f6fe044a405a9513bc
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2383e68031ee0dbc08de43b778d1a8a915bb947577149622e7c019c45c328f58
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:11e04d747aad8555f144f8460da7bbb93a810734a8172fbb6cc81c6a2142c8ee
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fc0a4356003c5cf9e56046e9356b95bad7460df1fab45d34b55468192474983b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:792fa664ee9558bb87286cd829f50c314e32027b5ce9c90722f07da2c6e0e078
