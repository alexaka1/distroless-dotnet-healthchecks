FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:d8f01f752bf9bd3ff630319181a2ccfbeecea4080a1912095a34002f61bfa345
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:088655e4b9bd41d72e9f6d3ba96af5f556b217bf8cac7f26b002a27db0693530
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:440fcf7393169e07526df19360628c424a95c435d1beaf70a53048387398e79f
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:d24db805712b6bc67f4f18a50d3659fc9f8014dde1b36494c98f0159f6d1542f
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:ad0dfa1dcb85be067dd3e8e9c06eeeda6dff82fd6f4c7102b368b19deedba448
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:aa201a40eca8c6ee93b96f16e38fd22772da3b6187759e33f8e3440045d08534
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:e0c43e53c95427ea285bbe1de51721a0201531f85969b6ebc60c9505f1facdb0
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:6f1e327abf964af230aa33e73832188c84dde7e365f871bb0e0e819b6552cbc7
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:36dce8df44d14fc63b0c4a6b3b1a73b7c2a53b7cab095fb26432c79d371eaa31
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:501195bffd3eccac8805ead7f18f8500abdc1a558f46129bfad60fcda300f3b7
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:2fcecc6906389ce154e52e5bf2e0cdcb75f41a9fdf39f908c3e6d5f514f61199
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:2de0fcf345bd402e78704f33991890620ffc08488f0b815423c30c1b4c996389
