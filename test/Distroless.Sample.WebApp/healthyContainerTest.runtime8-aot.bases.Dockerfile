# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:1121c20c01c391976f249010080ab586991000a826cb5fc7e8f844e91a4ad99c
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:6bb5bfe2dc26382f069a6e7d92400a2ea50c81fa46d32f4afbf05daeefe04ca6
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:cec07176bf5b2ad1686e635275f397390a07d512c46095c046dc66b3bf8765d2
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:1ee97cb790bd0d714b90bd895b93d4e70a05e0b44ec5ab913b9c040fd2aa4cc2
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:5441483ba3e402c0160820abd4eff7ccdb93c3e8f49f1b42e80b3ef228cf0140
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:b7e2a050a3c34903918175a9a81e68c29321b741da2973f33fc0d788bac28344
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:98f9d2815dff09bd62b92ce59b42e8a790514b26251191a51d0ffcc6a94d38f1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:5ceac632a20b42d0a8396e3dac26c013a265519332971c621cf31edc1f3004b8
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:06b0e1a708f513c7b8345484ee343d3de8045c2b2e446608c10c63ebf4120bd3
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:5264a99a1337d7c1710ac3378379cb5a9ebd2435a9bb51cee217be4504ad99e1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:5120126442d53009f8fc6aa970dae766a502601cfd9e2f38ad51d98147d9da1e
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:8f13eab02b6a84cb6822cea3b19838ea5cb82d9659f3179205566816a0161161
