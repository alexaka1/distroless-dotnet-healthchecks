# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:f14161ac04f03d5a58f7ce2a665c2c2a2803330d04ded1556f8e2eefe2aa4515
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8affebec88628680a6fd905d093491cd5932138becf24621ff84367717d9e335
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:92e002c6791a68c8405e9fda1e6d83ee10649a7f690d82662bbe6e4e8e31748a
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:8078ffb835cce18846788e570e34e99cf9161f202fb4efc7c580031b0fd0aecb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:4d90ab65a65566038518b6109bd4c1f83b92afa6c38aca357642e105e7075772
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:008a88ade4f6e85fc6a75eb2d739fd3500fcc1a7b1167a11ce6e9a081e8deafb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:c2b6a0b8b3d55607deef1449229c0f3e8ce885e2b9a52be947fb38af8b4b5758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:8d16d24928bcfb526812f41f97ad697e7d15bf7032ab2cda05086840521f6493
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:72cf81e414066174ca5446ddf506f1362132e319a069b81bdba70a3005d7bd2f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:1d666b7bc36b0e179d4bcf0db89b6d35e8f7b58820b4ebdb752c83cbd6921b4c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:716f5a59534a1a93edced745be5b2ba78f5a3a29caabf510cae923166dd2496c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:82c62cc4f1c9f9165b10dd3482ed85d13d1306c91f16a7179f38650e8bc88e19
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:752c13141f2462420f0da92be52c1713613f6f4b73b722c57b192b178f098f12
