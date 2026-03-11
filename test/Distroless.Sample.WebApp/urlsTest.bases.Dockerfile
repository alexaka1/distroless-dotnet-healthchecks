# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:781fa7c8bc3e8eaa7c719624baa7fa0ed4faf8aeb7391c93a53fe783c67b4a30
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:5f8dfcb8835dc66b0e8381d1b11030b748cb88807a3a5def1170ac809570f9ed
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:d9f132a756d810f6aae555f84f70809092da0e7bfc4b849e4ea1f98a4eec76ad
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:40f60e38eddccc669927828201a926b6f62e35c9fd97b388947ba0c53fec8a11
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:daca01078968e6e08510666577d9a7f979d4150f78a6b5ac86514b8ac2cf6364
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:c440ca300cb6cb287a3738dde365a49ee67d89be4cacc8a7da5b3c42c4a599b1
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:e328252bbf97e42805cca92d8c8c2c6e3c12bfb134bd5caf0e5c5c043bd3bbec
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:b398fe8408290a5335b4ec20eb879a26a73c59575658d7ec2def2c60b7b153b4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:d9947e4fb460147fbee729a10a85a32e58685ebba1da38c42aa74606597f2307
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:e83dd54b916fe786f754934d9bc75e89373190f3f99d1915c9e92aefb864ab86
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:cb1b17f396647e6f69f16afe7d8ef0d8bebcefc5a300392cfe8558811ca5753c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:9472721cc3883ab52e48fc2252a42bfcb3e233d88eb8e98dee3cc6150ce28aef
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2138e9978d75b18ee6e77c834c1a616a73b33af0782b517fa79b078bcbcba311
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:cd7a01db7af22938a7e5cd938aa0e1a4d0edfb96b7134476c31c954197b5461e
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:8c68bd95ad8e18cb37a9ac282bca4d3458516d8bf14d0a2e32a98ef8e21414e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:adccbeabae3eda4a5f889add4b6e1f4bb183efdaf7b90d00f26aa3d1da25e1cf
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:15834f79d99fe5cfb7e11bcb0b1c62f895688dc85bd84b8c91c0cfa08958b952
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:f5428b5697a4818674fbda4fe91efb765ccfd077c1d24671c357cc2617eba1d0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:ea46ddcc5258dcc6c9fa96d7b00bb88ffad9fef0441ac96cacbfd5c917245653
