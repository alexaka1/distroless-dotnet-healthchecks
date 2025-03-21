# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:6d9e31a3d95847d9223397bfbe9fabd9374481c17e8b5c7a94624896913e9c08
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:e96d70be72a0bbf4f86c224efbd2ca65729739bd4cdf92aab27e8d1f189e8427
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:8b16cd2fc39c0fe9f9e08dd63ac14ee11f0d01015ded10bc7dbd5e730756c3a2
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:16b1056862014f94a0f6dd18f2200909651015285fc7f0c6d099037d9afb5f6c
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:f556acb325913ceded4e12b4da0ab51e91ee6c971ef2e195634d746787540021
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:008a88ade4f6e85fc6a75eb2d739fd3500fcc1a7b1167a11ce6e9a081e8deafb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:c2b6a0b8b3d55607deef1449229c0f3e8ce885e2b9a52be947fb38af8b4b5758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:8d16d24928bcfb526812f41f97ad697e7d15bf7032ab2cda05086840521f6493
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:72cf81e414066174ca5446ddf506f1362132e319a069b81bdba70a3005d7bd2f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:1d666b7bc36b0e179d4bcf0db89b6d35e8f7b58820b4ebdb752c83cbd6921b4c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:716f5a59534a1a93edced745be5b2ba78f5a3a29caabf510cae923166dd2496c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:bcaaa4cac2ab57d0637474872fa012651a2efeeea53209b77387cb344869cf64
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:ce7d14c96e2eb0b975ff1e71d96264fcd2b8640c7d3db2d9bf0683a6f09a792b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:a32040ddbe568d7f2bb527723c955601e54c73a4c818443c47f1a6ec7c7a6bd3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble@sha256:a32040ddbe568d7f2bb527723c955601e54c73a4c818443c47f1a6ec7c7a6bd3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:2bbdb4bce4ad39bacaf3a9b50daccbf86e798900176ad1b01a39456c26c1d202
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:889cbf4f07b5bef6d637f061dbeff0e613e5d8e60f059c7fd7d3dab4808eaeef
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
