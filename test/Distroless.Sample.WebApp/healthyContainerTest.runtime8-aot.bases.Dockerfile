# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:6a30f53cdc9695eaf1a100631b78cbf5d1e80606740078526cba98f70f035040
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:e236bdc19ea900d592647d343d51ef74add92bc0f5e12dc9042ff5c16e4ce6f2
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:4090127a0e87766027215be3c146bbb29ed13ef35fdd6deb26f1359e790922c5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:6970cb2d1f8ba6e87d49cfb35687106f0b80c874171978b60d8962daaa8e097f
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:ec74f8cf89ab25aef3883de6ecca9f3b9dcbec6122455f8395a07be55a11dd14
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:76654781b37e63b13c358bebc3b0551f143ef6f545c0ab8bcee150d2e6f02071
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:847ef56c652758232ca3b0c1c775245bfd4933ea3cea4c341f750fd3ce45a2e3
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:7d484776dcbf167391f1a27e113bf4e225bb330d103c8482c4f92fec8bfd763d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:2e64240dfa2af4f7cdf49826baffe14495b09207ed78527c4accfd20240fb68a
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:3ed568d3736e0761e0ce5776cbd0b1ff3d91335646fad83b35d7ac8deeb0e762
#FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:8a0add9d16939ab33bae85a6adb36e219e0b557fcf105522598ec7f08dba0ca5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:bddc777bd03b992f5e785957695b27fbfebddbaafb409d4ffc8b6c54c0326340
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:0c819e6dc90230070e4da395a056d863ef67e2b9584054f9a120a31b56626a16
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:b1128050acb8658495aa035a063197a3e56c79a968d56ef8c6b21d65bbdbdef4
