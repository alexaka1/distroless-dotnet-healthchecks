# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:bf3e1fb9629c8bf4fa2a17581cfb57d68bacd328fe89df194c8e8e0ab5bd0597
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:3dcccfc18b1a0d24dfcba6b527a792c19eab6db74655a05399736270d7ee0c7a
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:b2fde989fa66631ee0d21c0658a75b304eb3c8ccd1a88a0675bb1fac5af41317
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:8c509f4f096186b5883fb81cea36c61f8bce626003485b79632e2a5381618be5
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:2a384c45389c370cbdfdbdfd388b63aa089d57e355d0a354a127ab3f56c72055
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:9f76e4a69723d44e8c0faafa3bfb03d36aad584a10bb4ccc6bb0a15a1e794d1d
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:65868b14b5cc2ab7da60e4d0259123276c9557ca76ac8555d6ca489930baf483
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:1d2e92959b7fe29b1cc35cc001ac7985300ad2546d56a6a4c2a7fd51f07b02ff
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:27d7a1a34895de356cf84e0cf628022d668b89b50da9a0e43309745492ed6433
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:4f2e692f305df31b8f2063ab2ab4c426bebee149f8ba012469e36fd7edc2fba6
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:59165e24988b729e6e32096805659453c1632fce581bd0072540be3babbadaac
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:0c03a403818970a7d9e98e3cf7f002358ddc3ca620aedab54266089699328548
