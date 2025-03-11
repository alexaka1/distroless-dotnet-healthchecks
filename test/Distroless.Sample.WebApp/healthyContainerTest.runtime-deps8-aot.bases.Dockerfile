FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:3362334f0d27985c5bd76539863e41dd408a41133667b347f397467eb090cfd5
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:a1a65d1b56e41914b61f595d5ff9f3fa608375feda71abf1ecbb4dfb8b1204d2
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:e724573d8fa64334ab877cd042d9cecef8fbb65857c9315500a76c50b0b7daa1
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:04e94a836c61cf7d4e0200ae8f8e7b1cb2b543ed260fb1355a1d2b520fc6a631
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:4a295d9306d206d091a95cc255e6c15e8ccea759298e868a42610d8275da94f6
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:82104e5ba1f6fede284af34356ea989fa745cd0be2f37d4a771c3c12a45dc76e
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:008a88ade4f6e85fc6a75eb2d739fd3500fcc1a7b1167a11ce6e9a081e8deafb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:e4b1d6b3aac72d707f9170f3d03aa2d77e8d22b3bb3050bbfec47b331b92c304
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:e8e715e35046be9210b32ce87fce339dc2b098a8b8e5cc5df71e67dfc3a15b0a
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:c6c4441c94506ab1d15a0a0f8ebfdc518c93196d95e780cd4a426907be52f31a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:c2b6a0b8b3d55607deef1449229c0f3e8ce885e2b9a52be947fb38af8b4b5758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:49353fe639fe9e3d9f1ae58fad35878686792def33730b73f5d09efb154b67a9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot@sha256:df9d3d92e6bde5db0a36076365a90a25de386efe4996730d200ce3ce7d95569f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:bb5587d505f74d56bd241338ebf53190809e15f14361fb9691028ce8f44495ae
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless-aot@sha256:202cad9359932b3c9936bf600e23117603be1b9737b3ca11e83c64dfff0556d3
