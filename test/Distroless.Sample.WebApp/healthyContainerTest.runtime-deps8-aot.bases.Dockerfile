FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:56cb22a358efc6f57848c65291a986007ff030ace5742f69c54bb80d5fccc1ee
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:b6346f8b22d08199efee44681b5506849fd7d6e612fe1d9c07241441edc5d853
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:df97e9d77bfec263c7f8bd7ca14f47009f95d3c9b3f20536b9234ea0312eca2d
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:22a51299a4ac824425c905acc5e392c3076c9841ce4f3f2085b62eb6466b4e71
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:8e5637b4c1787b978f9d1ec19ef101fa03060a72997840ddffcaec7b8e8bda0e
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:e6a5b3876b06b28ed8bbfa09b07ae04ae11ba80cda63cbd411c34df2671853e5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:f41081cc1d48ef4bf47a72bf7ee76092fcf015c8f1adebb52a542c48f84d11da
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:f6e7bc43eed102abdab112bc467acad21e75bf97d7d0887320fe2d625b28d156
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:c77db55ad3f199d5a23ec6312fc6d3c59ac0f9033102063135b683dbc8b12589
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:a851adbee5172e83300290b13cdf855f0c28064c550189baf01196c916a1a200
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:d100f6fed721ef92e4f43ae748cc6db6de682fe28011f91262f56f3b0187703b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:85344742c5ca89d91188da8c0d249dd6fb760ee41e468d815dd4b2b1e7add556
