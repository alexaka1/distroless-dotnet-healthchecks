FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:14529413f5bcd9f11d3fb230abe5bcc6118ca27cc3a3d3ee042dc36081a9569f
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:b1eef9a8b93c632a94eb03fa3ea6e4b03e211c3dd59c9495372ee846868f06b2
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:bd4288d187eac2d9753e4623e0466b9ceec2b340254a640858d3ebb1b25afbac
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:f7e280f0e14760e9a9aae0103ad524662c6da3ad9659f572b75ca0b30b258805
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:1eff4dd57a63d964706e007341cc9a57b65060a78f1af340f130d8a768cdae1e
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:5b0e2bc5e87a2c558387d8f6f7b64b6372aeea89f7ef8b476bb4a365244f90de
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:fd7f204c1316c5a2b01db1f0cc5699a169d86a97adc552cd67528f42ab7be4a8
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:b08db0043d1733dbf50c839efd0f369c44ab1aa4d2df13e614f338477f0b5815
