FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:a2097627da835c523a663877e5389ea48ca3bec826354b8d0a39ec1070314938
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:61135f944d6a493c6c07aedbefacc4b04ca21142799afe9d853e5df5ee9cdc29
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:fa9eea353f704b3b7260cce9d9631b4c881e728fa3e6281fc855ff7e72e6d41e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:92dc3ebdac8f640a5ea9eec0e8dff82d7ab4bb2ac147a137d7890cad9241893c
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:49c804a439ec5875cb12ac6732f2fbb3f81a5cd765334ce12fb113d33a3ccfbf
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:837962052f9f2e9ecffc3761dbfcc74cdf38f393d5dac343e41c1bdc52596dc1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:91776338898d0e7e471597d9f3c092b5456bbb0d9f75fb40606a32a4bfcffb9d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:83ad19b5a34b52320eae6bda8341f800275bfaabb249f8ead88f2e13fd014d82
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:f100fdf185050c304020c51727e4a3bedc94bcda461267167c70f54a3d59eb7f
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:04bf967777d3d68d865aac9c950e9bf20e5e938eb29783f015eb7d4590303dcb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:c1cef44e08d67cff1e2ec59c28c287739e25307f110213e933da8ba73ba9b982
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:948c4e1d3614670d313fc34f9293b856c178b08e108769cee1f5b08f599e2b26
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled-aot@sha256:3b50db9c4b5774a780bd12f4493232394554f22d04e96e1f71e7eb85c5898337
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:d759cd8bbf8679604b9c24f156872a33be9d813e41fae875cb0aefb054c61b65
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless-aot@sha256:3e6e4ddf5a586b83a4d243b568e43d199fc430ab7eb664af6c89064d5b3ebddc
