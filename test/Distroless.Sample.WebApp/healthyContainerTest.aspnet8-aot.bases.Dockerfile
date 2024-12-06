FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:d5a12d209d3775776e08dd5d3fc1e43b5dbb8b0abf03adb0a7fcc7bc44ad8a5c
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:fc7201872f5520d28dd95351fe2696fcf576e554d883f25c87850640c799f36f
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:794a22e891a8ed23c93f25f2fa0eb381743f60434084395cac8a7a8183b24fb7
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:aea25158272a339838eddfb45c38bed06974e37f39bace4dd3a557a3e7a605e6
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:3396fb8feef03a06e14592f4f1b155366dfa3ebdd94afab72fec9a5f41ac7c79
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:5d8bd71127870d8cc6b1c1f03c2227d0ced11c0a3f0c175472b7911329e9e152
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:c95f58f114a2c908df53dd34d6fa9fcc3406da15e262fb6c549e10c8ba67fc04
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:a5207dd532102cb8fa130f4c763ab292314a514691c81aaf3c0f5e50ea4b5d85
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:c2bb16aa125d6f5e75206bf0fead49f489c804fac86548cff646ce493e745725
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:9da50c6218f33b209f6d140d8172f0e0c489cf8c40ca9a4ad8b3f1139088fb1e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:7076e554122f3af586f3937aa9b52a4d04a1093ab5cad32cf3f357a630665f6e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:8836a6c394f90a302a1607abc8430c5b3fa57c75221ba78269a81dd845d86834
