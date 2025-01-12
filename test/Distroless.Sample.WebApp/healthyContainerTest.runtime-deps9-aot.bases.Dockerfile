FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:80b658b28e704be70f376041f0d8d574e1072c12ee3bdbee46b6d7876a5948e2
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:45fd6dce6aba0fdefe4e3a5ef1f54093dd5d4dcb2135241e79cf3574e3b25d8f
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:29a4fd3882287f148dd3745bbdb2e490a47eb1b84c44c593a19a100c4f7caca5
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:9269af06411c50714b4fc274d735f40a090dccb1ba42776829522e2ee4b4f437
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:5b3e646423b557b8932d22d1fcdb3b93d1e64b850aeae032f2b552795b73ec58
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:dc52dceac2316bbb5ef11848915aaf7b0253e8c005c3cb5c15c1500477a67289
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:252c83377595ae550267fdbc2e20501f1c14724505296979c9973863122dcc97
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:b4ed0cd337e357e177ac2caa28ccffbf7f48c7da267bd59a67db0388ec0e7967
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:fd128b568c75cd3e325b879332b8731003f622c9114d791782664e0788b5a801
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:4595932d3642342cc71c3a2f0daaa460048d20504eff9b60fa5dba7d8007e44a
