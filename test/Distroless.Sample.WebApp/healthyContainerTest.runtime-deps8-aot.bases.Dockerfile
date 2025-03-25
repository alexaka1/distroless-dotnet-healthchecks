FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:6d9e31a3d95847d9223397bfbe9fabd9374481c17e8b5c7a94624896913e9c08
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:abf637ea85e5cf7b5d6ddc8ae25b400390c18092b64e785a20f1c4d37b049dc1
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:c1d19fb8ecd06da413d351dbd7d8063b88ad62b7f8bff5a2b83c47cf83e9671e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:04e94a836c61cf7d4e0200ae8f8e7b1cb2b543ed260fb1355a1d2b520fc6a631
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:4a295d9306d206d091a95cc255e6c15e8ccea759298e868a42610d8275da94f6
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:878feebc76d44886ebbacfe8fe92bb79db4798e0680d470b7ba9cecd5e9c66a4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:41e8e5cce3e42060dba34e38266d8b761a019b1ffd07efcd6f0ad03029067593
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:4fc009a452d0c1d2355c604c4cf10036bcf2aca6fdffd4b582d9f6d2412ee6a5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:d4aa8dca4b834a142a5360c62970d5c79bd5acdd7eedfd9f39716156c10b54ba
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:1d666b7bc36b0e179d4bcf0db89b6d35e8f7b58820b4ebdb752c83cbd6921b4c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:716f5a59534a1a93edced745be5b2ba78f5a3a29caabf510cae923166dd2496c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:49353fe639fe9e3d9f1ae58fad35878686792def33730b73f5d09efb154b67a9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot@sha256:df9d3d92e6bde5db0a36076365a90a25de386efe4996730d200ce3ce7d95569f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:bcaaa4cac2ab57d0637474872fa012651a2efeeea53209b77387cb344869cf64
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:ce7d14c96e2eb0b975ff1e71d96264fcd2b8640c7d3db2d9bf0683a6f09a792b
