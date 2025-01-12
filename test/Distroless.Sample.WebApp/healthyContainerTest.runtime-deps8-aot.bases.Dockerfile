FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:74a14ce3ebbb56752032d643754dd0509da15418f2eea1526241b8e104114021
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:dd7e0c208c64be85809f3cae95da06acde1ef1741d97b2ee99a3ce9d9645cd71
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:53c897319e81d09e5362094bdd02284a82fbc2af49db638578ccd4024ce09568
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:de6d21521a8022eed8a0b66e2f08371275bf24537cb98441ad89c3596b7afe2d
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:06ff459a341cc6a709d1e92b62ba5ba871d1bd0fef3f3bf17543accc0ee0465c
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:e229b2760f8e9930cd33db3f7c53e68dbaf5bea11c4615a155a21de2b7bb129e
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:6abee90e75eed04edf0c3f7ace01890dfd3a0396e9ab531ffa807be661a3a04b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:82dfe1750a34fdaa4ea51d8c9cad6ad50830ec6db11188aafccbfd5b739b90a0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:c840afa9499a1db300c4c757890844bbada74efc96b09b1f80a4af1e6146f572
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:c6c4441c94506ab1d15a0a0f8ebfdc518c93196d95e780cd4a426907be52f31a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:c2b6a0b8b3d55607deef1449229c0f3e8ce885e2b9a52be947fb38af8b4b5758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:49353fe639fe9e3d9f1ae58fad35878686792def33730b73f5d09efb154b67a9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot@sha256:df9d3d92e6bde5db0a36076365a90a25de386efe4996730d200ce3ce7d95569f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:ffb6df4bfd76ffb66ef13481160229b9052a52056df6968eee3dac472a69bae9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless-aot@sha256:06d1390b03ad63e2174eda84e6bcae2d808820118cd4b1fb9a99df7ae691770d
