FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:9f61acdd145ae8e226a34d09da7e95d0376e95f02bbd49343845e6673cb239da
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:4e44a5d4cfca4ef238046c9dc75acf3b9044f23562c5b948f7c4bf4070a61303
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:53c897319e81d09e5362094bdd02284a82fbc2af49db638578ccd4024ce09568
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:df82f5ec8647c20714adf52f9b9c4ffe25bd568f1ba00ba30ccb6391e640518d
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:06ff459a341cc6a709d1e92b62ba5ba871d1bd0fef3f3bf17543accc0ee0465c
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:89a97fbedaf34ea35c460c4b64bed7423b9e463a86d90e88a1560d44de2835f9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:3e3021b9c690d371483253331c65d039b3401247335cf9df7cba4274ba9a471a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:82dfe1750a34fdaa4ea51d8c9cad6ad50830ec6db11188aafccbfd5b739b90a0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:c840afa9499a1db300c4c757890844bbada74efc96b09b1f80a4af1e6146f572
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:24cc69665c290ab18d7d8a322bce04bc5d86b0f9f13fb3e540387462a70ec8af
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:d111fb0875622c573740b6cf94438c4049f848b583e85db1c51f8d195403d285
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:0b2cfae612572a96d1fedb5f0d53d9b8eb5e22eb3a063827a7b4a84e2c22efad
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot@sha256:590ba9e1f9b1e5294b64993ea97c76bb4df7ec8916847154ecc90d2d214a175f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:be964defe10e4a9599a7436d693c197d379c52b3a7743ba8b9cb53c5325d9d20
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless-aot@sha256:cda0607bcf46adcb7234cc4b7a0bfcd2aa025f9f6de7e5e3a2a21225e8001f59
