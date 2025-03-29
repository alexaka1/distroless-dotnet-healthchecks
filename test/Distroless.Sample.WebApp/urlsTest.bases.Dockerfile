# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:6d9e31a3d95847d9223397bfbe9fabd9374481c17e8b5c7a94624896913e9c08
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:e96d70be72a0bbf4f86c224efbd2ca65729739bd4cdf92aab27e8d1f189e8427
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:8b16cd2fc39c0fe9f9e08dd63ac14ee11f0d01015ded10bc7dbd5e730756c3a2
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:16b1056862014f94a0f6dd18f2200909651015285fc7f0c6d099037d9afb5f6c
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:f556acb325913ceded4e12b4da0ab51e91ee6c971ef2e195634d746787540021
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:31759498da6a3627b67a2c49f7a6d32d86020f6ac3689eeaeb241fb03b4c7d2c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:3bbb6687d62dfa8aa9207ed8bc691f6f63145ccfb24dafcd2780b092382afb57
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:41e8e5cce3e42060dba34e38266d8b761a019b1ffd07efcd6f0ad03029067593
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:4fc009a452d0c1d2355c604c4cf10036bcf2aca6fdffd4b582d9f6d2412ee6a5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:2b48f2cb3897fc60436db8f171f0b71f8310958f841730cdd98782bcae3bbdcc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:bcaaa4cac2ab57d0637474872fa012651a2efeeea53209b77387cb344869cf64
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:ce7d14c96e2eb0b975ff1e71d96264fcd2b8640c7d3db2d9bf0683a6f09a792b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:7b6f57ff4562ba24d4ed7ad415fb9abe7a36dff8807f7aa72b3c267c5230bebc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble@sha256:7b6f57ff4562ba24d4ed7ad415fb9abe7a36dff8807f7aa72b3c267c5230bebc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:d089ac1c7a96166ec7a394564b9337934947c066b4f4dc02e41d9ee2555d7991
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:889cbf4f07b5bef6d637f061dbeff0e613e5d8e60f059c7fd7d3dab4808eaeef
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
