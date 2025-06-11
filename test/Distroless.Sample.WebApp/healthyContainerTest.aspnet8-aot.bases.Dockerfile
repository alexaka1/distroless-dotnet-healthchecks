FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:d5c0d91bc8fe887684b97d5409056270ed78cd23a5123436e842a8114a64d584
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:c59e7733aac9520785bed2779758ef509b11ab320a8a0ab0494868b0030073de
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:3cede7ca994a4fe47c347fad0720e81dadfd3f5245bec4b5bb5c5d17e0d19167
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:147773733206bf80a4e28adaaa8802bca4fdcef9adb6412e26de9fa248dd7a0a
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:a99864b2e9947ba9553529e0362cad560be5fd9178b88c28fd810d8d9aad55d8
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:43d60d0e46611da2db09abbdaef0f2ea0a77eff68ef003175ffa25eabf67ce93
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:be5e0ff8ef2f5ab6d64e6bb165c6d29fe55a44162880fe8b5643333741fc6748
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:2b8b87eecd931e1481ec34ddceb7ea6c9be052b68db3dcf2976933c20b44a3de
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:df8c64a2fbbc0ff9d7864291d850ee3954ef0e4e6ab9758339db356bfca4e7e9
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:3bf2493dd0ba370989b0c5354be47e83a09c31fdc43fea5917cdea590f8309f2
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:6ccf450a3119f9dafcc9762e439391420a5c8814296fd03919fa3d80b28c9c45
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:5bc9cabd574323403528806fdddfa83ab1d9352eafc75077ac19c4d4ddbdd528
