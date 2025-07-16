# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:1121c20c01c391976f249010080ab586991000a826cb5fc7e8f844e91a4ad99c
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:6bb5bfe2dc26382f069a6e7d92400a2ea50c81fa46d32f4afbf05daeefe04ca6
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:cec07176bf5b2ad1686e635275f397390a07d512c46095c046dc66b3bf8765d2
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:1ee97cb790bd0d714b90bd895b93d4e70a05e0b44ec5ab913b9c040fd2aa4cc2
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:5441483ba3e402c0160820abd4eff7ccdb93c3e8f49f1b42e80b3ef228cf0140
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:b7e2a050a3c34903918175a9a81e68c29321b741da2973f33fc0d788bac28344
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:728837f38b8c28d6ddfaa55fcce09e8bed4d56c1a3b10c716d5145edb50da14b
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:d452768bb0ca6c01daa42d44fce6129a54e6c612d180fcb565a89658b1ebe9a3
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:6b980da5fbd508149cb0624d081c64f699805701e4267907257ccef2f2bc632d
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:12851c7e68b03aa3a565b0d1dc820536c93968bef409348d15553613b4e5afa0
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:182183e7b7e29f0ad642c94276b843166f5113235ad113825abb623ab72b0dad
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:37d5224eeb8314680f32647978cd3dff07e0c628d4fb92216ca05b4b869e65f3
