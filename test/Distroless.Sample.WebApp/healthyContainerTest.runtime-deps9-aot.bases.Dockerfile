FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:aa6c89e08e7e8e2ec4b1675a3285d2f51693ad2f3f635a0e9c788222c155d4bb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:6bae94661a63fc8cc6db9ad4ed68097042404389d57f5df9fb6ae8f7e982d259
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:4573c8c35826d126e8301a0683ea38418ccb79d83a9ca341dfd5ad95aee4dc71
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:33827be38d0ab02ff6437a0ca9573b95861b9d990b0f0f491ffee2c68eace218
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:615659f03beb661258ba2e5460919afde2fb61ac510a38c58113ef2d0e46b9c3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:69bb00d5ec95aa3eccb2dffa226bc405dcbe0c8c1b2ffc0477d5ae8235f9e911
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:785e37da791c02e0a6afa5cbc0186dd51848bf40cb79432e563539d931e01d27
