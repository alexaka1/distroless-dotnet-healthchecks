FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:bfd59a980e332c77ad135ff7594f605f444994eb182adf95a6b446f9bf99dc6c
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:bf40a6d7db8c0387e0bb54b5e82cd7bf1ce72bfb9e979c990d75997048451e32
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:075d97b33e2bdb85da86f9f8c3832d2c025de4b387edf32ce0a45a5897861522
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:75ae9773a195b50f757660265c24ed8fcfd988eacbce7ec6d7032b1ecbef2300
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:7c95d628f16c12ddf4a3e906cf778639d87406e9235455d3a966fda775b1fc56
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:1ba8a15ced536b016f67a0a864845f3914c36ddd24718431fed30207a3d72974
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:73416e97ccdc4d20b0922c078fccf71dd05ac45346857e7abea89b3cc92a82da
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:82dfe1750a34fdaa4ea51d8c9cad6ad50830ec6db11188aafccbfd5b739b90a0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:c840afa9499a1db300c4c757890844bbada74efc96b09b1f80a4af1e6146f572
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:c6c4441c94506ab1d15a0a0f8ebfdc518c93196d95e780cd4a426907be52f31a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:c2b6a0b8b3d55607deef1449229c0f3e8ce885e2b9a52be947fb38af8b4b5758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:49353fe639fe9e3d9f1ae58fad35878686792def33730b73f5d09efb154b67a9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot@sha256:df9d3d92e6bde5db0a36076365a90a25de386efe4996730d200ce3ce7d95569f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:8fe73593f564560479bc4e0ab6b12d25cb0281ba1c171e8837e006ca49f6a57e
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless-aot@sha256:7a0a41eb42d41e7f84790ddae422e663a890366c1f03c7a269240dd889e8c775
