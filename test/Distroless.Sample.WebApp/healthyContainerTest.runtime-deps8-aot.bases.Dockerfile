FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:46c32f4ec110e2a1868453a3a0689d0e3094dde681774c556e8270c638cd4fc6
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:92ef2d1850745dcfbda3c580393882e3db1bc0fa6ddf0cc1e52a0272fc1b4740
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:cbde878ce765234bff7dedca0544e6884dc212535bc8c14a37c81c986ef80d00
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:22a51299a4ac824425c905acc5e392c3076c9841ce4f3f2085b62eb6466b4e71
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:8e5637b4c1787b978f9d1ec19ef101fa03060a72997840ddffcaec7b8e8bda0e
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:e6a5b3876b06b28ed8bbfa09b07ae04ae11ba80cda63cbd411c34df2671853e5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:f41081cc1d48ef4bf47a72bf7ee76092fcf015c8f1adebb52a542c48f84d11da
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:3ee146686c881c9f12fa0de568a647683d58e4eea0eba7886e76504115230915
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:96172c852f7575bcacc1f95f207695cfd4040f8faeb309e4bdba61c8c7a0f50c
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:a851adbee5172e83300290b13cdf855f0c28064c550189baf01196c916a1a200
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:d100f6fed721ef92e4f43ae748cc6db6de682fe28011f91262f56f3b0187703b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:85344742c5ca89d91188da8c0d249dd6fb760ee41e468d815dd4b2b1e7add556
