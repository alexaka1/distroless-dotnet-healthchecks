# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:8226744060124b043c4d44f69e13c339c4a59d208bf5dd1a0e50931c03d684e3
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:aa6c89e08e7e8e2ec4b1675a3285d2f51693ad2f3f635a0e9c788222c155d4bb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:6bae94661a63fc8cc6db9ad4ed68097042404389d57f5df9fb6ae8f7e982d259
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:4573c8c35826d126e8301a0683ea38418ccb79d83a9ca341dfd5ad95aee4dc71
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:33827be38d0ab02ff6437a0ca9573b95861b9d990b0f0f491ffee2c68eace218
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:50ada20a42469a740b4c89c091767df06ee6cfb057fbdba61a8d28e439d1d758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:899ebd6681a4872ed5b3f4323964538795d2b38872eda1c75eaa4597ba2856c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:615659f03beb661258ba2e5460919afde2fb61ac510a38c58113ef2d0e46b9c3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:69bb00d5ec95aa3eccb2dffa226bc405dcbe0c8c1b2ffc0477d5ae8235f9e911
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:785e37da791c02e0a6afa5cbc0186dd51848bf40cb79432e563539d931e01d27
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:237955352cba35551eac28f931b78286e423825873562cd0a8664ac1f13a168c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:4a40f5d454377eef02483a8b357052ed6e5cab9acd9747f245d4110d93b58d56
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:948d2b2108521033c86bfb43a143d17e54e90f5f495962f1905ebcca55cf9cf5
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
