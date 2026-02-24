# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:d9c7a38d050c9bb90cf5453e8a8217a7eb9df77db3cf8100f4f84d1fb57b5124
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:d19587fa3d92d034c83faed7707aec88282c379347c3959e6630e2039b127efb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:d6b24f5135ec789f330a10b74bc89a038ed2f62c3272ff1fc2523c5809ddba1d
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:119c5e062eddbd1c6f752a7c69f155524bea24a6df8dd379e75c8e360c67cf68
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:f174c68e7c7297a44d9535fa572cf99881f875fe17a2716ad2a41090f48d7b35
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:eec48112f8965561540395180a320501d1c729878e949bce18e9eafd96847076
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:1d1bb6dbf34faa991b444979b8be60a25e8e1b8ba213007833a6775cdca4e3ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:787bd683dfe555c1c1d86582c3fb53f93cb6d729fdc7fd582dd20615b89f869e
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:abcd6251efb9a7aa738a48ca4ac3a4b55b0fc5bf987e4b4cc645ca0d70fb761c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:c11850efa5c0cbca7222bc6658b2471fe4c6c77b53e9fcd44a96c8f7c932861a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:413b17c44e8acaab092b78f1c39d554ee196da03257c86079271e6d6bfb5beae
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:10ebdbfdb7823a0d7ed8d1db38d9a3c46ece6f8030aa39b302e08e5729359c52
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2138e9978d75b18ee6e77c834c1a616a73b33af0782b517fa79b078bcbcba311
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:5c562ee7901dfd000344fb5d7ce6eb1f9e8d0c7235bdaf122d7fa7a30be0d729
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:3dcfabee245894307639f44269b118e9ae983af10f8b22f274bc80d611cfa386
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:230776a81fe74c9036a654c243e816d9aff5c978692950413eeadbd84e44d280
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:50867dd54620e0d1552a7f7e9644f8688e74a5cf3532d6af839001a782ff56d3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:f5428b5697a4818674fbda4fe91efb765ccfd077c1d24671c357cc2617eba1d0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:ea46ddcc5258dcc6c9fa96d7b00bb88ffad9fef0441ac96cacbfd5c917245653
