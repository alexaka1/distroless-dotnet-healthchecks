FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:c149fe7e2be3baccf3cc91e9e6cdcca0ce70f7ca30d5f90796d983ff4f27bd9a
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:823cef6cc59bb6d180af7af4843047b2ac622a20253d280a39a3a3d4776cc591
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:823310e3e2902712c6972ff07e83ec84d9a5d79732fa790e4bc69fca1fccdc96
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:7a8363a3602a64fb20ea8b9863ca02bf624d5e67a81898d1213f3b44c02408f7
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:8cec93e3d983c62590c97306e4d258f754f23277ef2eba774d7c9aecfdf02b92
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:4718fd39d9401dc9409abffab6050332b46cdde73bdb1dc8ead8d92be3da6881
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:be5e0ff8ef2f5ab6d64e6bb165c6d29fe55a44162880fe8b5643333741fc6748
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:2b8b87eecd931e1481ec34ddceb7ea6c9be052b68db3dcf2976933c20b44a3de
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:682d8ee3f6a57329d4fdb6c4486cb5a1bc2cb28f2db83603613efd335c898166
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:3bf2493dd0ba370989b0c5354be47e83a09c31fdc43fea5917cdea590f8309f2
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:6ccf450a3119f9dafcc9762e439391420a5c8814296fd03919fa3d80b28c9c45
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:5bc9cabd574323403528806fdddfa83ab1d9352eafc75077ac19c4d4ddbdd528
