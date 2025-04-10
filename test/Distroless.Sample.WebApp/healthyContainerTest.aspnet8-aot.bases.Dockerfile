FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:ab605d8d1b0886af2ef4bbaf5167fbe237670b6fd9829a05c4d08406afdd985e
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:276bb42c3791040e06bb7028d26b0c82ff354b15c17a99f9ea263fe540135224
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:ef351c11adc72a3581adb079bd1c212f9b92036088bce2aea4043d42c20344f5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:4031241cecfb3ebd7b3734c383b0e2ce0c8aa8b349d6888ad1e2c3030eeaa6ae
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:09d88164bedd70b05f12ecd463ddc7c9a5ebe12e4c2bb2bf50ce224049738d9f
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:5ad52a0f3fe08bf3f819a9767b49c280ea2fd7a49850a3c93b9f659a14f93cb1
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:6fc7a3884e4abcb3a73186656bf774b4050aa219d5eac8560417ad60c4126425
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:7728369d6bfb70507e07db73dd6cfe172ee4573843085d164ddd171656c31699
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:ec891e979b4bed142e21bcb11b745ccb8fa38bc0cf874b521c9cf0cc2eee61af
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:e18f09cfdfc5917924d17616b6b401b0a3a023f5860a4a00b39c2b140d9a6086
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:66b13ae8e0da94f1d6255fa84f2c4826ad496abdd255b02de425588199325abf
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:6c5c80e34f799fc11f91445a67f4a29ec9b00e1c6322780ccde8f99cd5aee6d5
