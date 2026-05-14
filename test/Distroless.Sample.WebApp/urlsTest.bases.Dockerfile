# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:846e16b92c8c2a5a2cba523aac4609ccf1b889f2e250b79e45f9e7e16f80263e
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:043fe7ff2ee6ed77a160d11bd7b23a800da96643e14d73b60d3db7a45e58ea65
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:47388ba58a8274a294aa9c903be48c0be37631e17c07e15cbf229438cac582f6
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:8cd887ee05182bb4e45ab4a38e5f7930c25315f1c6b6856bb507a2cf75104b5d
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:aac41a592a046a8ad3d8ebd95d20499b4aec104805b834a1cd3ee33c8bb9ef87
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:4088c5d40b02f707602626bc71d81359b6f69f39f8ccdcee1d132a50f2bb036e
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:47fd5f8e1f727bc0da8881b9b2d98cb06b243d71f10dfd2bf6c5ff670e6cb590
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:fb001bcd86e89a45e017ec0e7e72a78988681ccc62a186bb4763dfb4feb90656
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:320e13df8f613ccd8bbf128b5a2504ab623b1237b6008bf9ebc6dff86231b4f1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:2ff9d36f1bdbe5bc4c38823c46db8b9223552adb6534f0f139e98947f2eb5fd9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:e32e9b224261ddb61a5a2019a49ad0b138cb4b349c7a0ab3fb19c6257f81a5b7
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:d108310d73a80e2e186d8c1d2162d130f6e6b8994ea2cb11a341845dcbef7b7f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:c7b034a9b6a5dff5db9975f66ffe459f9a66cca3857a925451c1a8cf690d91d2
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:02eb1691288a54e2b11d4a597d3e6c4ed8afc785d086b815996f2db92369d745
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:f276c0256ffca8fe816d48ba261962b54fea1b0e6f870b6a60b3b705c89e78ac
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:45db0f413e0559b5bde3921e78c4c738d2cb17b54127fcd03cb0608557e966bb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:94cbec9af5f0804479edd7298f2f5bae919403d1012047d6cd6a0daae67740ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:591a41ecbdd5727e271b9868e6b4f11996ff12ebf829158c36f6889511466881
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:5c2a513686cb809359e5dbc989715879269b059f707be3500dcf87fbb8a597ce
