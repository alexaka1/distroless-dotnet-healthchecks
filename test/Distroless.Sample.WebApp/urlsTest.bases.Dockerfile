# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:6d69b84913764ceb59128f912b2a53fffb4c492cafc34e268c895a450e881a55
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:cd3cc956c494b028d2f8a6c98703bc7bd1c779c82c2493230e9a329d9486806f
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:690ae76b7194d669c6fd3d7b7f4cd06dabbb58fb8bf02ca3a82d7d92c21d162c
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:ef120bd54269271d0c64101d81df3e754345a17fac1ca3925159e451f7c36036
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:691a1f440e92e85f0c5443d7a04bd441c404fdc8d8b9c7593cf61ad6929333cb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:de9f28090b2ef8489b99b6827c75a7e9feacd27ce9e6127b1040303a795f2a90
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:7580364209d52b11679dbd96bfcab6e8a9c95a9e0a2880aeb2775741b8e0a966
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:b0b633563f713999c1b2d3cee28a0176634cbe7b576294cf6c0dcabfbd795cb0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:2bbd90c7a0df4d88f807dff9304583fce9718eb68dd1128887e41c1dc11414d8
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:33deb138e4d836c41ff45deaeae65cd74e5714955d333019a94e675ced11ea66
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:e31fbef690cfbe98b210b296b5a53ae59b605b273b6998db3f6f0dc9807fff51
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:d34be9f61b1a7d107bb5daaaf494303c8dac2c66d4a1e0b17212bdc8e35919e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:38b0c0715fe4c11f73dc4c24389ddbc42aa81e38fc66a00bd2f628a6e8d2a86d
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:61964ad925c241da9b9a3651a6d6a76916548a53c82bc4b5f36bbe089c618002
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
