# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:4813614659269d3bdd7447b73ad76a39a7ecb4cacc3446e74d7f5a07be0e57c0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:769671a2ea72483c52160e88da4d7fce88687459497f225755535f4a16bd5104
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:65ea10e8f1093fca508fc5c92cb04b3d5784f449ef38f2f964175cb1232ec94b
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:f51bd3f3c9bd32fb8343e8d7835cac006c83075051202bcb6cb8edafaee115b0
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:bb93c76e409ff4461cb0f2bfc5ed7c14e77c200785efa86a30a4e08c8b26d6e6
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fd421ffd7c074d64dd5064bf789f091ac4dbed09abafa6db68428dabaaa468ac
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:a86bdccd871eb7180856123bd40f4acfe6166f85f2a0c7b026568fad76613c41
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:53f12210ac88a16f4cdd6a58b5644a06bf9b30a692273b221487f6f899c01236
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:320e13df8f613ccd8bbf128b5a2504ab623b1237b6008bf9ebc6dff86231b4f1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:f3728f2b3e4ae1fc60561f9ce4e503c1ff074f1ff5abe5222aa43014b6f746e0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:e32e9b224261ddb61a5a2019a49ad0b138cb4b349c7a0ab3fb19c6257f81a5b7
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:d108310d73a80e2e186d8c1d2162d130f6e6b8994ea2cb11a341845dcbef7b7f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:c0bad880a30e2aa8d258da3c33ac6c3d619acec2b69a9038228c2446f64dd662
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:962ef681468320cc5ef25fa18259cf3200247cec2ee96c2574174d4824272151
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:4f08c162590324de60f31937f5b5fa9f2b5eddaa4f0aaec3c872f855bf16c36c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:45db0f413e0559b5bde3921e78c4c738d2cb17b54127fcd03cb0608557e966bb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:94cbec9af5f0804479edd7298f2f5bae919403d1012047d6cd6a0daae67740ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:e380ec572a0dd2bd17bb343c9eccbcffce10bd1b3ca4b29a92c38416e8f12e38
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:5c2a513686cb809359e5dbc989715879269b059f707be3500dcf87fbb8a597ce
