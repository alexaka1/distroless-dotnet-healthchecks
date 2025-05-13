# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:2520917a9c827a581b38ada1e99198bbd6309d4b4f88e61b2424d035ae56b2e1
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:d6283ef6b77df2c117d38da83f1e9850753e5ed56a2bd584e8dd97ef0537a4ad
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:4dd82b2866ce5a934b6fcae947cca2cf627502c551e62a65d25e7b0f7b31afde
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:c03b48d53da8f6ba5ad1489892381a15e867f470c425d3254af74bb0fc23c8e1
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:5179b0bcc320815ba2b773b7abc77b6f210b28a648be24a74d06e730a1bf6b5f
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
