ARG BUILDKIT_SBOM_SCAN_CONTEXT=true
ARG BUILDKIT_SBOM_SCAN_STAGE=true
ARG BUILD_CONFIGURATION=Release
ARG BASE_IMAGE_TYPE=ubuntu-chiseled
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-noble-chiseled@sha256:bc6ba0158e93277ca1a5bc0881d13b08e6ca7f6d98db623592095eaf7fd7a816 AS base-ubuntu
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:ad7cd1ed2e913fbd806f8ecc0e8bb8e9e8fb7cfd4d3fa43be9aa0b4cd8008bf5 AS base-alpine

# Support both "ubuntu" and "ubuntu-chiseled" values for BASE_IMAGE_TYPE.
FROM base-ubuntu AS base-ubuntu-chiseled

FROM base-${BASE_IMAGE_TYPE} AS base
WORKDIR /app

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/sdk:10.0-noble-aot@sha256:65a26f26dfe45f75f547c1bc7aad5fbe3135d7695079e3326ccf9538d57eaf77 AS build-ubuntu
# alpine does not use cross compilation, because https://github.com/dotnet/runtime/issues/92294, also see https://github.com/dotnet/aspire/pull/10275 for more context
# TL;DR native builder to build for a specific `arch`
FROM mcr.microsoft.com/dotnet/nightly/sdk:10.0-alpine-aot@sha256:58a1191a22232a14a15736dbd3125e2a80542659c3970c464b353293c44576f2 AS build-alpine

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
