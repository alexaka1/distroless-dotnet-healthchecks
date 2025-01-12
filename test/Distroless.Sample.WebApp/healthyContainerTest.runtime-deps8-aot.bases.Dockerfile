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
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:455c9074801ddb8dda673195de803567af136e5cf66737f1a6ae7fa88f99c67d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:3c9f54d63c33e97f1a96917aa2e11cccc8406dfc61bf473c2ec55bd10d0e97dc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:73971c36a1152bda540b5973d99ff289706248bfb1f2d35a1442802769a42d54
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot@sha256:307c91b714b1a420ff5992f543800a1388fe8cc4b80096e421162b11a763f914
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:e1d67b2af04078c4ccf6206e0562fc79947108caa2c3d097ed422e0b620f6ecc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless-aot@sha256:ec6d67e1d38a8da0e2dc585dcef8d0aa7e35bae0cdd9a771f9eb43c0afdf5179
