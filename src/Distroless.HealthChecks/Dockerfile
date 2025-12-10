ARG BUILDKIT_SBOM_SCAN_CONTEXT=true
ARG BUILDKIT_SBOM_SCAN_STAGE=true
ARG BUILD_CONFIGURATION=Release
ARG BASE_IMAGE_TYPE=ubuntu-chiseled
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-noble-chiseled@sha256:9416d3afd6060895c906a7fd5bda9c520b39f4cc4a2f3e755d079b63220800c7 AS base-ubuntu
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:8a7f0b163f28a19d5fc108715046dd2260c46e45c5bdbe6c574f6e9db5c980fd AS base-alpine

# Support both "ubuntu" and "ubuntu-chiseled" values for BASE_IMAGE_TYPE.
FROM base-ubuntu AS base-ubuntu-chiseled

FROM base-${BASE_IMAGE_TYPE} AS base
WORKDIR /app

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/sdk:10.0-noble-aot@sha256:f19a01aa4ef84354677122bb1cc0ea670a5bc5e33decf1da8b7e5491731b2884 AS build-ubuntu
# alpine does not use cross compilation, because https://github.com/dotnet/runtime/issues/92294, also see https://github.com/dotnet/aspire/pull/10275 for more context
# TL;DR native builder to build for a specific `arch`
FROM mcr.microsoft.com/dotnet/nightly/sdk:10.0-alpine-aot@sha256:3a54df112dc6ec80d3a515e91d80d2929415af1b1117e1fe3b5b24992bdd3dc5 AS build-alpine

# Support both "ubuntu" and "ubuntu-chiseled" for build stage, matching base mapping.
FROM build-ubuntu AS build-ubuntu-chiseled

FROM build-${BASE_IMAGE_TYPE} AS build
ARG BUILD_CONFIGURATION
ARG TARGETARCH
WORKDIR /src
COPY ["nuget.config", "./"]
COPY ["src/Distroless.HealthChecks/Distroless.HealthChecks.csproj", "src/Distroless.HealthChecks/"]
RUN dotnet restore "src/Distroless.HealthChecks/Distroless.HealthChecks.csproj" -a $TARGETARCH
COPY ["src/", "./src/"]
WORKDIR "/src/src/Distroless.HealthChecks"

FROM build AS publish
ARG BUILD_CONFIGURATION
ARG TARGETARCH
ARG BASE_IMAGE_TYPE
RUN case "$TARGETARCH" in \
      amd64) ARCH_SUFFIX="x64" ;; \
      arm64) ARCH_SUFFIX="arm64" ;; \
      *) echo "Unsupported arch: $TARGETARCH" >&2 && exit 1 ;; \
    esac && \
    if [ "$BASE_IMAGE_TYPE" = "alpine" ]; then \
      RID="linux-musl-$ARCH_SUFFIX"; \
    else \
      RID="linux-$ARCH_SUFFIX"; \
    fi && \
    dotnet publish "Distroless.HealthChecks.csproj" \
      -c "$BUILD_CONFIGURATION" \
      -r "$RID" \
      -o /app/publish


FROM scratch AS binary
COPY --from=publish /app/publish .

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["./Distroless.HealthChecks"]
CMD ["--uri", "http://localhost:8080/healthz"]
