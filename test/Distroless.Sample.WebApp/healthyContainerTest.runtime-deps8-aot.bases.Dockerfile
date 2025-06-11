FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:204fa63b865cce7fac6fdc00b7620f7a1909064e8449faf7872ea1a5ffa56ad9
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:5d517857a274d60b87c75d8464e0673af3a93bb31a1c4e7f31ae387f621bad19
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:5421a377c052c224818f564152f115d8df21d3d1cabc0b22f415beb073693d52
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:a254699caea70e788cad915c5c55ec4be0ece435f04e187834956b1a7c529a62
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:e846ce6d94d7ac5673e0aea694598d73f93a4b4b3bfbc0d7bf55475b3e043290
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:39311568696a29143ce1d4e42be815da079be7479f3e7d96899719967eee445b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:3be442e4caa24b49522b87cfb015ac7cda947ab21927070692d22e4240923c5a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:4c2febc36e12dce36fd55e53ed0d5c67f26627d09e9895d4bc22902cf8491535
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:cf526eb79ef9ac78c34b3d2736849c1c1ace7cd36f75fe2804f647e123383009
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:899ebd6681a4872ed5b3f4323964538795d2b38872eda1c75eaa4597ba2856c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:4cd7ec0999a0461a59be7dd5f1f3a7313e75ac5a0abce98c4bac0efb1aed8687
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:f08fb2feae98bdcd99e39167329097d73780b2ba3ae13124671c45fc04fcd532
