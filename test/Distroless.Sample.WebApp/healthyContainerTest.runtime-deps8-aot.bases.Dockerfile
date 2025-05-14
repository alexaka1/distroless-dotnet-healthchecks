FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:2520917a9c827a581b38ada1e99198bbd6309d4b4f88e61b2424d035ae56b2e1
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:2be936c3a419f3f25bad102215254c2e9cad31d4f6098284ba886c31e20e1d62
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:39bd7a1495e587532262d4fdfcb95e22ede7a4a948a94a27749ab38d610f91f1
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:2e4b019171b70fdebd2a5cc44f493ccf6515f4d15c6a6382fb30252185365a80
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:184d1ad32b41a16cde0a93cd7a836f34d65cbc484e3ce03a50bbdae95c933446
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:db3e2a28a8b09f64a3c0f7f016bb5c453e301c1f78b9cc903bb2d69192927e6b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:50ada20a42469a740b4c89c091767df06ee6cfb057fbdba61a8d28e439d1d758
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:b4a09abe1ebd08d090f4ae9cf62927c418d6c3b02b1d806f2d14af89a74cd88f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:ca9d484440ffcc1081de4b0053553d9e481250c41699f1f3bb582d8e1b293626
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:899ebd6681a4872ed5b3f4323964538795d2b38872eda1c75eaa4597ba2856c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:4cd7ec0999a0461a59be7dd5f1f3a7313e75ac5a0abce98c4bac0efb1aed8687
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:ca912288c8034c93570a9734127ab3b30b190eb0633cf6de9da916d06e1fd40b
