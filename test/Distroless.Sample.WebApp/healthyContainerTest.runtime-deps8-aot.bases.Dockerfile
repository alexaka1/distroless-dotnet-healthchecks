FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:8d11e38518ca9e0a6473872779b9cc6973007ed31ceff698e00c07b51d438015
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:5c0322fd57c6682673aebdbf2f9b325c07837f18fcaff74fc70f6456e323f34c
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:f3a208df7eab198eb7f734892d164f2287f92aabf787427b0ad177a295d6ed39
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:8d7feba8be6d4532c44fea419bbebaa8db672a177e86d48c1ac793ed7e44da36
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:e679f3e9fca951760e19dfbc3e0b3f712711727cd2fdd16a854433c7827ce3f4
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:817dcf878673f5a1775fa2ca608235b9f34959201f264517d525e5cee5d3fb7e
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:c1f55d20ef9d037a0f4caff532333aff1e3cbb4842507ebc9899e3c07cb1167c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:72cf81e414066174ca5446ddf506f1362132e319a069b81bdba70a3005d7bd2f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:e8e715e35046be9210b32ce87fce339dc2b098a8b8e5cc5df71e67dfc3a15b0a
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:1d666b7bc36b0e179d4bcf0db89b6d35e8f7b58820b4ebdb752c83cbd6921b4c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:716f5a59534a1a93edced745be5b2ba78f5a3a29caabf510cae923166dd2496c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:49353fe639fe9e3d9f1ae58fad35878686792def33730b73f5d09efb154b67a9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot@sha256:df9d3d92e6bde5db0a36076365a90a25de386efe4996730d200ce3ce7d95569f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:82c62cc4f1c9f9165b10dd3482ed85d13d1306c91f16a7179f38650e8bc88e19
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:752c13141f2462420f0da92be52c1713613f6f4b73b722c57b192b178f098f12
