# noble
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:7bb9ab71e5b4335bf56aba254411378edc217ddc4ed37dee99d36ba7479f6d73
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-trixie-slim@sha256:8968d18986593cf13ab5982124395efb40af84d2a49d287c471e903f985a47b3
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:5f13251c18a1207c28e368ca7917ae90abf426691608729dc54c536ddb8db339
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:22b29277c05181d7ccd01bdfa6f54535037eab3fc147c4959401d0665098aa9d
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
