FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:17de18d43822c0379f9779ecaf5e8886b73b413b5009251a277c08ff7be47027
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:6cd88dcf3fe0be3286ca299d41ee922544cda02c6af9ebf4dd732270141be8e8
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:bf2eb655f67f443eb3b2827ccedb1f936bdb34dbe9d716ed1ab28cb3b34bea6f
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:246960a4489e60020bc34a0c0a4c8c72a2cf608ab5097ef72a16aa934f07b314
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:1e6e943363b3f9bf1222faceeff785c701d1b424d3c0bc954727cd5fa7a3b0e3
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:b1d57f4d44b8464c826162a4e0b675bc71dcc5e4d8f9b9020dcacc1ea62c31cb
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:fd7f204c1316c5a2b01db1f0cc5699a169d86a97adc552cd67528f42ab7be4a8
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:52bcbbb4ee4e537a4e97cbb75cc0f095d30ebf7f5147a65f701a10dcbeb124bf
