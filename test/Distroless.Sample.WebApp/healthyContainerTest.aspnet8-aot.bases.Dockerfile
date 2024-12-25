FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:9461e0688e9141bd312da7afef640bb551529ad70511209509b5b9d387309d4b
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:d1f7c5f0ef897b62d8580f5a51dbc9add024c273d06b67ff28580c882e9ff672
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:440fcf7393169e07526df19360628c424a95c435d1beaf70a53048387398e79f
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:8786e9c0cfb53e1e7de411ad92991bf709e6ad4678e702c98d57bf610d5b4f43
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:ad0dfa1dcb85be067dd3e8e9c06eeeda6dff82fd6f4c7102b368b19deedba448
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:079abcc7e1d7a0372df927fd688b68f50c0209104d4466e8f50d1d48b616e05a
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:ae95791e8ea5d16333714773e135e6c286be3cdfd1cb813ab90b9cfdae8e5f53
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:771ee32582ae183f138bf57bf4292fd9cbfbff058a312e865849d64df21daad3
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:c2bb16aa125d6f5e75206bf0fead49f489c804fac86548cff646ce493e745725
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:5755b5f331e8452f58b6a470a280a26a0fc807b02e5b26fc313a149195d44134
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:bfb60eb1de40b85cd092b231a65c2377371ce15e611c9c7d233f0405564f97f2
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:89183559e1a9e8134dc359228f1f902d13f19c980b649bcc75032b5afb949ffd
