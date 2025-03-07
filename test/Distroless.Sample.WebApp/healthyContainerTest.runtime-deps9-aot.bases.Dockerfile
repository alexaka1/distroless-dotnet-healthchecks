FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8affebec88628680a6fd905d093491cd5932138becf24621ff84367717d9e335
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:92e002c6791a68c8405e9fda1e6d83ee10649a7f690d82662bbe6e4e8e31748a
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:8078ffb835cce18846788e570e34e99cf9161f202fb4efc7c580031b0fd0aecb
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:4d90ab65a65566038518b6109bd4c1f83b92afa6c38aca357642e105e7075772
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:8d16d24928bcfb526812f41f97ad697e7d15bf7032ab2cda05086840521f6493
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:72cf81e414066174ca5446ddf506f1362132e319a069b81bdba70a3005d7bd2f
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:1d666b7bc36b0e179d4bcf0db89b6d35e8f7b58820b4ebdb752c83cbd6921b4c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:716f5a59534a1a93edced745be5b2ba78f5a3a29caabf510cae923166dd2496c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:82c62cc4f1c9f9165b10dd3482ed85d13d1306c91f16a7179f38650e8bc88e19
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:752c13141f2462420f0da92be52c1713613f6f4b73b722c57b192b178f098f12
