FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:204fa63b865cce7fac6fdc00b7620f7a1909064e8449faf7872ea1a5ffa56ad9
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:5d517857a274d60b87c75d8464e0673af3a93bb31a1c4e7f31ae387f621bad19
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:5421a377c052c224818f564152f115d8df21d3d1cabc0b22f415beb073693d52
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:a254699caea70e788cad915c5c55ec4be0ece435f04e187834956b1a7c529a62
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:e846ce6d94d7ac5673e0aea694598d73f93a4b4b3bfbc0d7bf55475b3e043290
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:39311568696a29143ce1d4e42be815da079be7479f3e7d96899719967eee445b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:df542212a7652dcd41e41879798eb9b3764e9450bda23854207cf2a756d5a2c9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:3ee146686c881c9f12fa0de568a647683d58e4eea0eba7886e76504115230915
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:96172c852f7575bcacc1f95f207695cfd4040f8faeb309e4bdba61c8c7a0f50c
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:a851adbee5172e83300290b13cdf855f0c28064c550189baf01196c916a1a200
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:d100f6fed721ef92e4f43ae748cc6db6de682fe28011f91262f56f3b0187703b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:85344742c5ca89d91188da8c0d249dd6fb760ee41e468d815dd4b2b1e7add556
