FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:9f61acdd145ae8e226a34d09da7e95d0376e95f02bbd49343845e6673cb239da
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:4e44a5d4cfca4ef238046c9dc75acf3b9044f23562c5b948f7c4bf4070a61303
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:53c897319e81d09e5362094bdd02284a82fbc2af49db638578ccd4024ce09568
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:df82f5ec8647c20714adf52f9b9c4ffe25bd568f1ba00ba30ccb6391e640518d
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:06ff459a341cc6a709d1e92b62ba5ba871d1bd0fef3f3bf17543accc0ee0465c
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:89a97fbedaf34ea35c460c4b64bed7423b9e463a86d90e88a1560d44de2835f9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:3e3021b9c690d371483253331c65d039b3401247335cf9df7cba4274ba9a471a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:576b97385c540c454ff5b7a49a41c42fbd6fdf0f6b36d644f3d80791702bdb53
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:c840afa9499a1db300c4c757890844bbada74efc96b09b1f80a4af1e6146f572
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:76f01db21f2eb59a6908bb8eb20980835ed5ccc6818869651c387a35231560c9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:5d6c345fcf94a90b322eaf96cecf4c950be04023dbbb57d2142034c6833e46e1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:0b2cfae612572a96d1fedb5f0d53d9b8eb5e22eb3a063827a7b4a84e2c22efad
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot@sha256:590ba9e1f9b1e5294b64993ea97c76bb4df7ec8916847154ecc90d2d214a175f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:8b507dbb957c6efbcade4d234c7dab33975f350c7ebde65f962b25752c34b59f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless-aot@sha256:8f866f4a1dbad78ed66967d61fc3c421d30095cd7579c0d6e9ce6bee63b50782
