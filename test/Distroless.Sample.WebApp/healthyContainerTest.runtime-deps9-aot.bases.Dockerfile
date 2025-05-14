FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:d6283ef6b77df2c117d38da83f1e9850753e5ed56a2bd584e8dd97ef0537a4ad
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:4dd82b2866ce5a934b6fcae947cca2cf627502c551e62a65d25e7b0f7b31afde
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:c03b48d53da8f6ba5ad1489892381a15e867f470c425d3254af74bb0fc23c8e1
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:5179b0bcc320815ba2b773b7abc77b6f210b28a648be24a74d06e730a1bf6b5f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:615659f03beb661258ba2e5460919afde2fb61ac510a38c58113ef2d0e46b9c3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:69bb00d5ec95aa3eccb2dffa226bc405dcbe0c8c1b2ffc0477d5ae8235f9e911
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:785e37da791c02e0a6afa5cbc0186dd51848bf40cb79432e563539d931e01d27
