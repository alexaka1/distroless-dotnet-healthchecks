# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:58daf5a704802bf10bc32292266f2ae27fb57ff9eed70b0173c34d5598082ec1
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:769671a2ea72483c52160e88da4d7fce88687459497f225755535f4a16bd5104
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:13d05dbe76790fb4b30bb031c2300fdada818b93aec8ad388225de56169cf3c9
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:f51bd3f3c9bd32fb8343e8d7835cac006c83075051202bcb6cb8edafaee115b0
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:bb93c76e409ff4461cb0f2bfc5ed7c14e77c200785efa86a30a4e08c8b26d6e6
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:aad1ee8e9b1748b75901405c1a5712451cb1451ad48260df4bda631d8c94c542
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:a86bdccd871eb7180856123bd40f4acfe6166f85f2a0c7b026568fad76613c41
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:fb001bcd86e89a45e017ec0e7e72a78988681ccc62a186bb4763dfb4feb90656
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:320e13df8f613ccd8bbf128b5a2504ab623b1237b6008bf9ebc6dff86231b4f1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:2ff9d36f1bdbe5bc4c38823c46db8b9223552adb6534f0f139e98947f2eb5fd9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:e32e9b224261ddb61a5a2019a49ad0b138cb4b349c7a0ab3fb19c6257f81a5b7
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:d108310d73a80e2e186d8c1d2162d130f6e6b8994ea2cb11a341845dcbef7b7f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:c7b034a9b6a5dff5db9975f66ffe459f9a66cca3857a925451c1a8cf690d91d2
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:962ef681468320cc5ef25fa18259cf3200247cec2ee96c2574174d4824272151
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:4f08c162590324de60f31937f5b5fa9f2b5eddaa4f0aaec3c872f855bf16c36c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:45db0f413e0559b5bde3921e78c4c738d2cb17b54127fcd03cb0608557e966bb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:94cbec9af5f0804479edd7298f2f5bae919403d1012047d6cd6a0daae67740ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:591a41ecbdd5727e271b9868e6b4f11996ff12ebf829158c36f6889511466881
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:5c2a513686cb809359e5dbc989715879269b059f707be3500dcf87fbb8a597ce
