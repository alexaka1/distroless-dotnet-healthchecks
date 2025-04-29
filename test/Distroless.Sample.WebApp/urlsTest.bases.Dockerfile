# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:8226744060124b043c4d44f69e13c339c4a59d208bf5dd1a0e50931c03d684e3
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:aa6c89e08e7e8e2ec4b1675a3285d2f51693ad2f3f635a0e9c788222c155d4bb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:6bae94661a63fc8cc6db9ad4ed68097042404389d57f5df9fb6ae8f7e982d259
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:4573c8c35826d126e8301a0683ea38418ccb79d83a9ca341dfd5ad95aee4dc71
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2a58bc301d60acd0161ea4983228c7cfb9082d3759a36a8bb1e6dd1e93f1d7fc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:50ada20a42469a740b4c89c091767df06ee6cfb057fbdba61a8d28e439d1d758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:899ebd6681a4872ed5b3f4323964538795d2b38872eda1c75eaa4597ba2856c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:615659f03beb661258ba2e5460919afde2fb61ac510a38c58113ef2d0e46b9c3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:69bb00d5ec95aa3eccb2dffa226bc405dcbe0c8c1b2ffc0477d5ae8235f9e911
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:17ffe10392a61f2dbf95b10e612761db4b6bdda4e99d6b6f68e6c5d6587dd3d1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:a5edc3ec2828f23683dc226aedd5e875349eae48db722ff2c81d8d91904867eb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:d089ac1c7a96166ec7a394564b9337934947c066b4f4dc02e41d9ee2555d7991
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:135c47f7f28b1416c3bf8e3b5ccdf8c1960174be08eae1e3323aced7a1bf5eaf
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
