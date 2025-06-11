# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:1121c20c01c391976f249010080ab586991000a826cb5fc7e8f844e91a4ad99c
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:6bb5bfe2dc26382f069a6e7d92400a2ea50c81fa46d32f4afbf05daeefe04ca6
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:cec07176bf5b2ad1686e635275f397390a07d512c46095c046dc66b3bf8765d2
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:1ee97cb790bd0d714b90bd895b93d4e70a05e0b44ec5ab913b9c040fd2aa4cc2
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:5441483ba3e402c0160820abd4eff7ccdb93c3e8f49f1b42e80b3ef228cf0140
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:b7e2a050a3c34903918175a9a81e68c29321b741da2973f33fc0d788bac28344
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:2bfa821b6729895d8f60ef906260234bd4039e594c73755b3fb7234904cc42d1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:8f9409f6dcc100755e0d4fc27a5e2cec11f27fd5ec01bc3787d6258d0577cffd
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:d991d588be6b39c35affe2e37039aec82802fe98639db1131ee5c05eb573a3a8
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:a2859cc23c2fd6c02b95f61024d955f8653b52f59df8fef50dcf8a765daa9002
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:db71b3214558adc927efd97bf6dffe39aff49a4213b427543a884620ca024019
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:0423401a437e9fef725f1932a92224b1e968bcdd0d64be992605ed2a8c6c2b8f
