# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:4813614659269d3bdd7447b73ad76a39a7ecb4cacc3446e74d7f5a07be0e57c0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:b55de401c1beba249d8ece2301d194bebbda571d7d1d2b633714705bec398d41
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:65ea10e8f1093fca508fc5c92cb04b3d5784f449ef38f2f964175cb1232ec94b
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:f51bd3f3c9bd32fb8343e8d7835cac006c83075051202bcb6cb8edafaee115b0
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:bb93c76e409ff4461cb0f2bfc5ed7c14e77c200785efa86a30a4e08c8b26d6e6
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fd421ffd7c074d64dd5064bf789f091ac4dbed09abafa6db68428dabaaa468ac
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:11fbaed3f3cc0b1d84036b7897553a83ef3a639fcb3d1d3e067d23b5ae047093
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:f6ede06d3fc0ab1b04a59e2ce257d0ec9568c6b80998dd56f5ab54c0a8bb1f28
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:320e13df8f613ccd8bbf128b5a2504ab623b1237b6008bf9ebc6dff86231b4f1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:597ec0414a0b2edfcdd16a15764679cf8e7ceeb000c8e62b56df418c742a35d0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:e32e9b224261ddb61a5a2019a49ad0b138cb4b349c7a0ab3fb19c6257f81a5b7
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:d108310d73a80e2e186d8c1d2162d130f6e6b8994ea2cb11a341845dcbef7b7f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:c0bad880a30e2aa8d258da3c33ac6c3d619acec2b69a9038228c2446f64dd662
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:3e7d95f338b6a476a18689bc873c9db552b5aa4595ddaff878ad38d4926f3b74
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:fc88d918ac0ca9b643c9f36185bf892a9ac258571e1aa4cb9bf3dd25862a64a7
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:45db0f413e0559b5bde3921e78c4c738d2cb17b54127fcd03cb0608557e966bb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:94cbec9af5f0804479edd7298f2f5bae919403d1012047d6cd6a0daae67740ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:e380ec572a0dd2bd17bb343c9eccbcffce10bd1b3ca4b29a92c38416e8f12e38
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:5c2a513686cb809359e5dbc989715879269b059f707be3500dcf87fbb8a597ce
