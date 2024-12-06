# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:74ae244aa186678055533e7396a5b037c43c814e68e993f63b447852b2ed9c3e
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:c1101c15b76b5f7588d9ca1ea5067654b73718683309423a5623f03165ab016f
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:0c5702732dbe07e0800f7aa5a8eec80bdb49361a03cec0ab48917db77f275bba
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:6c110966a61045c43c33e8015874d457d2a86accab81b308df9e7bed52faf2e8
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:c5d6502d9f2e3db5cf73d06347ab6b79b3c12b208662c2598685a517634e5379
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:481a1ca563f99886a40f4744fc74bb14c0008ea90307ce26d7294a226370ebac
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:3e3a918f80daf3ea7de7ab39d13a6432911944711761137b81bd9fc5c6354616
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:5c720d151eb18e28c1853b53df5cdf7ee7a50788ef2bbf4da61c1af938c9a0c4
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:3467c0056857a76e41d79464d06ebb803cf152121ab29191e0de99f0111a7ff6
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:bf4c31da4c6c397c21e4d16f0e3e284af02876a3dfea64b7bc8d01dde4e615be
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:71a1186d4fc087c0b7c35de1eb5eae868910023d3af3158b6c989dee820fdfe6
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:31dac7cdaa72ad37d749df327bc54369a81837fe3256d3b16399309e358b864d
