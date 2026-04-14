# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:4813614659269d3bdd7447b73ad76a39a7ecb4cacc3446e74d7f5a07be0e57c0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:b55de401c1beba249d8ece2301d194bebbda571d7d1d2b633714705bec398d41
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:65ea10e8f1093fca508fc5c92cb04b3d5784f449ef38f2f964175cb1232ec94b
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:f51bd3f3c9bd32fb8343e8d7835cac006c83075051202bcb6cb8edafaee115b0
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:bb93c76e409ff4461cb0f2bfc5ed7c14e77c200785efa86a30a4e08c8b26d6e6
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fd421ffd7c074d64dd5064bf789f091ac4dbed09abafa6db68428dabaaa468ac
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:11fbaed3f3cc0b1d84036b7897553a83ef3a639fcb3d1d3e067d23b5ae047093
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:03e03f43f99baa3228e8b02bc1e979e02d7794f130033cbb02cb4ced0a6814e8
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:d9947e4fb460147fbee729a10a85a32e58685ebba1da38c42aa74606597f2307
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:2efc3341616729466985cdb81694b72c53ebeba08980a0e4358f6aca092928a3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:db1496b55b9fbd586e620474c6827555234f8511259987337265188c45daef67
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:9472721cc3883ab52e48fc2252a42bfcb3e233d88eb8e98dee3cc6150ce28aef
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:c14eef1f8d9a8c363dfe1c068bb88a37d3b82c6eeddd4b2442bad2075403e5f0
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:3e7d95f338b6a476a18689bc873c9db552b5aa4595ddaff878ad38d4926f3b74
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:fc88d918ac0ca9b643c9f36185bf892a9ac258571e1aa4cb9bf3dd25862a64a7
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:c22735624646265276c6de531febb7ba3a177519ab5c7e8a732514d161f50558
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:15834f79d99fe5cfb7e11bcb0b1c62f895688dc85bd84b8c91c0cfa08958b952
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:60ec8328b5ca36e800ddabcf6c2b709d9f295e220edb8468fa2cf8ff5c4d33a7
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:536c43237490a37d1fb8fda5be2b2c176cc2026656c15d6fa2e44cdaa713c8a8
