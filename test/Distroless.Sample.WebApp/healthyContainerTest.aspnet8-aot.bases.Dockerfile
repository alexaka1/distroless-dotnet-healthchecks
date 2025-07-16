FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:d5c0d91bc8fe887684b97d5409056270ed78cd23a5123436e842a8114a64d584
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:c59e7733aac9520785bed2779758ef509b11ab320a8a0ab0494868b0030073de
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:3cede7ca994a4fe47c347fad0720e81dadfd3f5245bec4b5bb5c5d17e0d19167
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:147773733206bf80a4e28adaaa8802bca4fdcef9adb6412e26de9fa248dd7a0a
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:a99864b2e9947ba9553529e0362cad560be5fd9178b88c28fd810d8d9aad55d8
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:43d60d0e46611da2db09abbdaef0f2ea0a77eff68ef003175ffa25eabf67ce93
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:3a2188d9a8baa0a21686fa5d36c449b44d1c589e34c47c2d1bbb565099a3fca5
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:508d71c3ab79810e7afb7f0feb87047c1167720af21c16f5783279f711731a83
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:7794e9c8b7af461ba76b70e2e0cc5aaedfc78273ea9a84019e5946e8ac13065f
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:a2e93e5b5610f069a1d14431721dfbf8680e85b0c110a8cac75a63e2f3df2a58
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:d429f683583a29c9feeb625d88d970e61d067f98015eae252160c79d746d5180
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:16efc2eb5354c40c9dc70d3476202043385492ca427aa7600b60c2e663391fb0
