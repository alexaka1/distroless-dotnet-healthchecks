# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:d9c7a38d050c9bb90cf5453e8a8217a7eb9df77db3cf8100f4f84d1fb57b5124
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:d19587fa3d92d034c83faed7707aec88282c379347c3959e6630e2039b127efb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:d6b24f5135ec789f330a10b74bc89a038ed2f62c3272ff1fc2523c5809ddba1d
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:d9ff254007f5c69d83e12d2684056c0919df6ecb345020ef178bd83d89571f38
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:f174c68e7c7297a44d9535fa572cf99881f875fe17a2716ad2a41090f48d7b35
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:eec48112f8965561540395180a320501d1c729878e949bce18e9eafd96847076
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:1d1bb6dbf34faa991b444979b8be60a25e8e1b8ba213007833a6775cdca4e3ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:787bd683dfe555c1c1d86582c3fb53f93cb6d729fdc7fd582dd20615b89f869e
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:370f60ebdcf2baea6b249e3d10f59cf5576ba1f5ed39d976abdbb3fe3416f606
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:c11850efa5c0cbca7222bc6658b2471fe4c6c77b53e9fcd44a96c8f7c932861a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:169fff8ab07aee182f9760c3b225c3856f8f20a49b9975005c9b269a55677a3a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:70611f40e2927927c54018ce56ce376e1bc01c6aaf71ab6bd687ca4470cb3b0c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2138e9978d75b18ee6e77c834c1a616a73b33af0782b517fa79b078bcbcba311
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:fc7cb58f9f82e77476ad0c40f465f94f4ca1e4a5bd69f235c80431001c5ed725
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:3dcfabee245894307639f44269b118e9ae983af10f8b22f274bc80d611cfa386
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:02adce9c065bab0fb78a25bee1da3ec851468b8b0f5a93dc4a3e725207b6fb26
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:5a5b3abb9892dcd52ed9616ad2e8efe0b739d050e12dba74f3bc90e109c27164
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:f5428b5697a4818674fbda4fe91efb765ccfd077c1d24671c357cc2617eba1d0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:ea46ddcc5258dcc6c9fa96d7b00bb88ffad9fef0441ac96cacbfd5c917245653
