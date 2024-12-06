FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8ffcf58f74f4ee100fdc971003480069ffc47391e0676982cafe1a003ef44747
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:961ea5c42a16cc7534d7fb69b2df2b97966c349683bdd04ee5347309c8efd779
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:53c897319e81d09e5362094bdd02284a82fbc2af49db638578ccd4024ce09568
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:5cc893809e2d2869e1a98c1eecc4c6ff6978d53bc3e5342014eff28a058867a4
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:06ff459a341cc6a709d1e92b62ba5ba871d1bd0fef3f3bf17543accc0ee0465c
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:aebe01f9855bd310da0950c19c791eaf3afafbf0c2bbbd164c511140bce8f29c
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
