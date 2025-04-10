FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:17de18d43822c0379f9779ecaf5e8886b73b413b5009251a277c08ff7be47027
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:6cd88dcf3fe0be3286ca299d41ee922544cda02c6af9ebf4dd732270141be8e8
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:bf2eb655f67f443eb3b2827ccedb1f936bdb34dbe9d716ed1ab28cb3b34bea6f
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:246960a4489e60020bc34a0c0a4c8c72a2cf608ab5097ef72a16aa934f07b314
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:a7e2e8efd3be22a8500ec332d084dc47ae872f4890dc303f5904d00dbbb4a5c7
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:38c87cb9493c6a3388e48a50e3911aacf1cc7640412bc847fbffde001ded7d2c
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:2e487cf31472af6a355909dd4bc50d7af75ebaee7d0b27b3fd26bffa44fe8e76
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:ca22a8101f867fc36cbfad9b87872d367d072f2b277e7102800b89aa878d4e30
