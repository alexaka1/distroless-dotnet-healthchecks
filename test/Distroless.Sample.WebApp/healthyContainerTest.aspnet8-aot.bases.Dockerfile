FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:04f79dd7f0a27eb079c2498ca9bab729ed40b91ed393d24846d6cb505f3fe646
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:d1f7c5f0ef897b62d8580f5a51dbc9add024c273d06b67ff28580c882e9ff672
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:440fcf7393169e07526df19360628c424a95c435d1beaf70a53048387398e79f
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:8786e9c0cfb53e1e7de411ad92991bf709e6ad4678e702c98d57bf610d5b4f43
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:ad0dfa1dcb85be067dd3e8e9c06eeeda6dff82fd6f4c7102b368b19deedba448
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:74357f290dd6e7cde9a92eac4b137d3ec476b738c71af014f7c53fdd99dc6d1f
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:ae95791e8ea5d16333714773e135e6c286be3cdfd1cb813ab90b9cfdae8e5f53
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:07a61e3501a25e53066b6938f65ef6f95b60675bf0092c083e9374bb8013456c
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:c2bb16aa125d6f5e75206bf0fead49f489c804fac86548cff646ce493e745725
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:dcf0d69a7171c1c5e6f51fb5007956e014b52f3d09c9caf7b721bf059a273c39
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:7076e554122f3af586f3937aa9b52a4d04a1093ab5cad32cf3f357a630665f6e
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:89183559e1a9e8134dc359228f1f902d13f19c980b649bcc75032b5afb949ffd
