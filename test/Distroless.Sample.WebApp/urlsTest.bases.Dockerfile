# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:2d59a9a7b655d69ce8e3e8bcfd9cce2335318de6404d35a98d67fe16e6cc3275
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:9a8afd03e66d58a560ccee0245bed876ac2a3efb17687336ecbc7e92addeba77
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:5e00ac3420387811e6645bf8efcc5b2a48f87e119a2a5a023b1511c3174b2823
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:a530eab1705f09b4b1490be8739544e81d8bfe82ca76cea619c239f5c3d959da
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:d23e0c3f9b4ead4eaddb1396461c9ecdd24db6d5b4ae5b6bd988f40522a09ede
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:b3a9a05ea2d19474de320ebfa16dc382530b98734be02a50558403bd80347d5c
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:b993024f39dcbf8cabfc263ee2c63d288e5633766426f453fd2711316079ecef
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:787bd683dfe555c1c1d86582c3fb53f93cb6d729fdc7fd582dd20615b89f869e
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:370f60ebdcf2baea6b249e3d10f59cf5576ba1f5ed39d976abdbb3fe3416f606
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:c11850efa5c0cbca7222bc6658b2471fe4c6c77b53e9fcd44a96c8f7c932861a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:169fff8ab07aee182f9760c3b225c3856f8f20a49b9975005c9b269a55677a3a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:70611f40e2927927c54018ce56ce376e1bc01c6aaf71ab6bd687ca4470cb3b0c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2138e9978d75b18ee6e77c834c1a616a73b33af0782b517fa79b078bcbcba311
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:a2bf273942b3563bb056ee0b157850aff51c61ba0197c9dea094db6f85f5bda1
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:1fe51b2247e87f4a830b37691b46256b4ecd9af59ebf0f431181ca2e71175b20
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:02adce9c065bab0fb78a25bee1da3ec851468b8b0f5a93dc4a3e725207b6fb26
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:5a5b3abb9892dcd52ed9616ad2e8efe0b739d050e12dba74f3bc90e109c27164
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:f5428b5697a4818674fbda4fe91efb765ccfd077c1d24671c357cc2617eba1d0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:ea46ddcc5258dcc6c9fa96d7b00bb88ffad9fef0441ac96cacbfd5c917245653
