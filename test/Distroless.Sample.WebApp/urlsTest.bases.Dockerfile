# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:39cf83ad394607c8e23b74a830580c157541d866048a043976c9f3d0fa806d13
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:a914cb39d74ef9f44ee8e3d80db8f391fc9e5de4e8701228c28963c7b87ceb7e
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:fda2fea4f47a1dbaf4917152071c7d561cc730c757d48fc9143c58ba32ea60b4
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:060c92b938e0777dbf43a9fce3296163a11582bc33af10e4585ac778158b77eb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:367978c7df6b1e88784308893db3b0a8140d489748dfb2f6124f29d95716c3d9
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:b3a9a05ea2d19474de320ebfa16dc382530b98734be02a50558403bd80347d5c
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:36aff376c1b45b367d0ae004d0775d2abf3b9d79c7d1383d973c7925b4c761b5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:237b4f1ad00f09f65e3f39e7c6d359c981af1aeb36282fe367ca6b5e989e800d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:370f60ebdcf2baea6b249e3d10f59cf5576ba1f5ed39d976abdbb3fe3416f606
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:7c49bc5fde4f8ec4aa45a26f30c71d88da4a84df66121e24a798de10dc9b8c5b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:169fff8ab07aee182f9760c3b225c3856f8f20a49b9975005c9b269a55677a3a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:70611f40e2927927c54018ce56ce376e1bc01c6aaf71ab6bd687ca4470cb3b0c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2815c93922517ea9b661e470331bef21147e7bb31df67dc746a7dbabc74e5751
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:a6408d64dd8fd495e92dbbe1d84c7bf828878d4fad9ec71f67f0a9b431c58580
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:674c6805984a975fd8216a6cffc133d7c4676fa14f97b31b3806679e949dc286
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:02adce9c065bab0fb78a25bee1da3ec851468b8b0f5a93dc4a3e725207b6fb26
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:5a5b3abb9892dcd52ed9616ad2e8efe0b739d050e12dba74f3bc90e109c27164
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:df6f61e63c32c7c451bad1b9280b9dc679a67618068042964f7cd9b9f3386a7b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:0e6a2a3f5431c31cf30ad8ef3aa44df2cd8152b4770a15952e4c42221b86dfde
