ARG BUILDKIT_SBOM_SCAN_CONTEXT=true
ARG BUILDKIT_SBOM_SCAN_STAGE=true
ARG BUILD_CONFIGURATION=Release
ARG BASE_IMAGE_TYPE=ubuntu-chiseled
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-noble-chiseled@sha256:77e678b9c66a51c832ab817d4494029ea36e3559d3df41549934f0422520ed88 AS base-ubuntu
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:4f08c162590324de60f31937f5b5fa9f2b5eddaa4f0aaec3c872f855bf16c36c AS base-alpine

# Support both "ubuntu" and "ubuntu-chiseled" values for BASE_IMAGE_TYPE.
FROM base-ubuntu AS base-ubuntu-chiseled

FROM base-${BASE_IMAGE_TYPE} AS base
WORKDIR /app

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/sdk:10.0-noble-aot@sha256:d88b9d4cf8436d22f77bb22b4417e8c8a37e6a18d8433a05309f8daeaf59c1b5 AS build-ubuntu
# alpine does not use cross compilation, because https://github.com/dotnet/runtime/issues/92294, also see https://github.com/dotnet/aspire/pull/10275 for more context
# TL;DR native builder to build for a specific `arch`
FROM mcr.microsoft.com/dotnet/nightly/sdk:10.0-alpine-aot@sha256:8334845a88d1b605f9f29d5f73817dfb199e0f8bfd735e3231101d925e5f6ae8 AS build-alpine

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
