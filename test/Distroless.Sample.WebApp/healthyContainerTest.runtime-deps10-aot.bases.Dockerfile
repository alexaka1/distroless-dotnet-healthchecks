# noble
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:a5edc3ec2828f23683dc226aedd5e875349eae48db722ff2c81d8d91904867eb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-trixie-slim@sha256:ee2afbdb64c19d60ed7ab6770cd1b658b3a44d60165d94c98c412bda562a7ead
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:d089ac1c7a96166ec7a394564b9337934947c066b4f4dc02e41d9ee2555d7991
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:934f0e0a290d24af0fa3945fa18d93add158aac8f51c6a2886ef46e44d2e2dca
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
