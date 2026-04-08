# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:f6b96be8a8721563e04fd9a40a8a90b60d50d30920602d16db2e3071cbbde25b
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:aaa4f0a0b44c1e524e25fcd56a2c3fb6311e67bc38c6b4059dbe70d8387d16ea
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:487d4be0ce9e0288f57b41ebd9fda82ef3b9845c0b6731d6d243a3aa7750a936
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:e7fb20f2c19d6f2544c463071a33865b2b0176f5b11239849e41c4c6f7bbb6d8
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:efbde7dd11decb0f9751cdd5336da759fa21aa387b3de1132deafd88a67b89fc
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:7a006031f9f5cdf304b093901fc57d6b792a42b41de157b5067a7defe5518e4b
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:0e94889b808a4c34c683921ec456c4c85cedd1c1ee7213060b14152b97c822fe
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:03e03f43f99baa3228e8b02bc1e979e02d7794f130033cbb02cb4ced0a6814e8
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:d9947e4fb460147fbee729a10a85a32e58685ebba1da38c42aa74606597f2307
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:2efc3341616729466985cdb81694b72c53ebeba08980a0e4358f6aca092928a3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:db1496b55b9fbd586e620474c6827555234f8511259987337265188c45daef67
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:9472721cc3883ab52e48fc2252a42bfcb3e233d88eb8e98dee3cc6150ce28aef
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:c14eef1f8d9a8c363dfe1c068bb88a37d3b82c6eeddd4b2442bad2075403e5f0
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:a2bfa45d1d1b158c9374d010ccef889e245b5ac3713e48565d27845558fb2a93
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:9ec585b84e539eff25a0c925137263ecb900db78d47e02a3b9ceb5d5009551fb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:c22735624646265276c6de531febb7ba3a177519ab5c7e8a732514d161f50558
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:15834f79d99fe5cfb7e11bcb0b1c62f895688dc85bd84b8c91c0cfa08958b952
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:60ec8328b5ca36e800ddabcf6c2b709d9f295e220edb8468fa2cf8ff5c4d33a7
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:536c43237490a37d1fb8fda5be2b2c176cc2026656c15d6fa2e44cdaa713c8a8
