FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:35095f3e2bf5ab1f0c6953ed1364028343b5aef029932454cf2ce9e9680827d8
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:56183d6f669841f7d08023c9a214f1cedf380f001d679b74fb5386671d4db186
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:2ef34387d6b812bda7aef7337d72596c99052e68ecbe4a433465df71979aebe7
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:1b7b45164c1fa3683b510d5eaba4a525c2bf42c353a7cbdd8e1fc2417a458dfe
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:7a925ce3c26ec171f26dea6a1e32926c3483a6138ba0d2a5369195f4619ce00d
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:efeae994585140a1401aa3d4512f4f657c21ff51c2a026128a99b59d5dd304c8
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:3cbe06a3dabc110410cb302920390bc31a98855a42b8e4dcf86cdd73860fa1ce
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:508d71c3ab79810e7afb7f0feb87047c1167720af21c16f5783279f711731a83
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:7794e9c8b7af461ba76b70e2e0cc5aaedfc78273ea9a84019e5946e8ac13065f
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:a2e93e5b5610f069a1d14431721dfbf8680e85b0c110a8cac75a63e2f3df2a58
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:d429f683583a29c9feeb625d88d970e61d067f98015eae252160c79d746d5180
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:16efc2eb5354c40c9dc70d3476202043385492ca427aa7600b60c2e663391fb0
