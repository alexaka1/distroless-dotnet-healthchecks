# noble
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:d34be9f61b1a7d107bb5daaaf494303c8dac2c66d4a1e0b17212bdc8e35919e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-trixie-slim@sha256:8968d18986593cf13ab5982124395efb40af84d2a49d287c471e903f985a47b3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:7b05b4770ddbe51fa93ff9f5e3dbc94f298271df91cda3353a212d722043bc4e
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:61964ad925c241da9b9a3651a6d6a76916548a53c82bc4b5f36bbe089c618002
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot

# alpine
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-alpine@sha256:c2f0ae7bb6ede95e30c6049055fb338d95b6983f872d06b652e9d6f62eae2f6f
