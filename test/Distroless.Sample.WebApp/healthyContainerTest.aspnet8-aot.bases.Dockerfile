FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:d5a12d209d3775776e08dd5d3fc1e43b5dbb8b0abf03adb0a7fcc7bc44ad8a5c
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:fc7201872f5520d28dd95351fe2696fcf576e554d883f25c87850640c799f36f
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:794a22e891a8ed23c93f25f2fa0eb381743f60434084395cac8a7a8183b24fb7
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:aea25158272a339838eddfb45c38bed06974e37f39bace4dd3a557a3e7a605e6
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:3396fb8feef03a06e14592f4f1b155366dfa3ebdd94afab72fec9a5f41ac7c79
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:5d8bd71127870d8cc6b1c1f03c2227d0ced11c0a3f0c175472b7911329e9e152
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:e0c43e53c95427ea285bbe1de51721a0201531f85969b6ebc60c9505f1facdb0
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:6f1e327abf964af230aa33e73832188c84dde7e365f871bb0e0e819b6552cbc7
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:36dce8df44d14fc63b0c4a6b3b1a73b7c2a53b7cab095fb26432c79d371eaa31
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:501195bffd3eccac8805ead7f18f8500abdc1a558f46129bfad60fcda300f3b7
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:2fcecc6906389ce154e52e5bf2e0cdcb75f41a9fdf39f908c3e6d5f514f61199
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:2de0fcf345bd402e78704f33991890620ffc08488f0b815423c30c1b4c996389
