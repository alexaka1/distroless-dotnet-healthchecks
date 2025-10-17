# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:3eccd9f6d81a7c05ecbefb49e7be6664ec19e2486dcdf83cee5c1297437bfd02
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:89cc6f608ec4ce3653e29aba782eb323ead2030c53b1f66e2a84a19a4e243a96
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:72f1a83c7de58476caa427af1cebb20418a4cad112fe761ba0802a5a95df5860
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:c3d80b2b56f53938f4ac452791e78a4d344b80bbea3925d0339cf738a1ab4f1f
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2a836b74c6c89956bc48fcd320c59ca7a8524b37b78f9e3efbdb16df02327270
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:de9f28090b2ef8489b99b6827c75a7e9feacd27ce9e6127b1040303a795f2a90
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:7580364209d52b11679dbd96bfcab6e8a9c95a9e0a2880aeb2775741b8e0a966
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:b0b633563f713999c1b2d3cee28a0176634cbe7b576294cf6c0dcabfbd795cb0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:008a8aa288fdd1485219beb4d965217c6d8591f63c6ffdfd15030119fb2d512c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:33deb138e4d836c41ff45deaeae65cd74e5714955d333019a94e675ced11ea66
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:e31fbef690cfbe98b210b296b5a53ae59b605b273b6998db3f6f0dc9807fff51
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:d34be9f61b1a7d107bb5daaaf494303c8dac2c66d4a1e0b17212bdc8e35919e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:38b0c0715fe4c11f73dc4c24389ddbc42aa81e38fc66a00bd2f628a6e8d2a86d
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:61964ad925c241da9b9a3651a6d6a76916548a53c82bc4b5f36bbe089c618002
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
