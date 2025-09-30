# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:6d69b84913764ceb59128f912b2a53fffb4c492cafc34e268c895a450e881a55
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:cd3cc956c494b028d2f8a6c98703bc7bd1c779c82c2493230e9a329d9486806f
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:bad8b36b482fb276aa6d1202c89aa6a509afa5ccda2688f8cad2109b3ceda1c5
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:ef120bd54269271d0c64101d81df3e754345a17fac1ca3925159e451f7c36036
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:691a1f440e92e85f0c5443d7a04bd441c404fdc8d8b9c7593cf61ad6929333cb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:29dee9028c07edc8fb0631c2fad0c9eae5b9febe2d7c832b271b951b12050918
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:7580364209d52b11679dbd96bfcab6e8a9c95a9e0a2880aeb2775741b8e0a966
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:606fc2488b9a4e44edca99ae353f1558e4b4a7f33fde9bfa4a08e0d79ef9bd88
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:80e13b197e62ef408375dad886ccaa652a2b467a7b89c0556bf6120a349a022b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:33deb138e4d836c41ff45deaeae65cd74e5714955d333019a94e675ced11ea66
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:e31fbef690cfbe98b210b296b5a53ae59b605b273b6998db3f6f0dc9807fff51
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:d34be9f61b1a7d107bb5daaaf494303c8dac2c66d4a1e0b17212bdc8e35919e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:38b0c0715fe4c11f73dc4c24389ddbc42aa81e38fc66a00bd2f628a6e8d2a86d
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:61964ad925c241da9b9a3651a6d6a76916548a53c82bc4b5f36bbe089c618002
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
