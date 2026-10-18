ARG BUILDKIT_SBOM_SCAN_CONTEXT=true
ARG BUILDKIT_SBOM_SCAN_STAGE=true
ARG BUILD_CONFIGURATION=Release
ARG BASE_IMAGE_TYPE=ubuntu-chiseled
FROM mcr.microsoft.com/dotnet/runtime-deps:11.0-resolute-chiseled@sha256:47ef522a67d1434d8b48361f05d4f55b37717094f56b83a580032c067d2ea0e7 AS base-ubuntu
FROM mcr.microsoft.com/dotnet/runtime-deps:11.0-alpine@sha256:9fb897322515d33730f87cb3dc3a43694f6f260f8e3e7a537c791fcda60ced66 AS base-alpine

# Support both "ubuntu" and "ubuntu-chiseled" values for BASE_IMAGE_TYPE.
FROM base-ubuntu AS base-ubuntu-chiseled

FROM base-${BASE_IMAGE_TYPE} AS base
WORKDIR /app

# .NET 11 Ubuntu images are 26.04 (resolute). The ubuntu-chiseled build-arg still selects this stage.
FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/sdk:11.0-resolute-aot@sha256:a87d46f838f76eb8685a39aff819d8de74a944c2fe6d8141d99496721259b088 AS build-ubuntu
# alpine does not use cross compilation, because https://github.com/dotnet/runtime/issues/92294, also see https://github.com/dotnet/aspire/pull/10275 for more context
# TL;DR native builder to build for a specific `arch`
FROM mcr.microsoft.com/dotnet/nightly/sdk:11.0-alpine-aot@sha256:c088f666e9e6a70304d17f686cbc483f97b6fb31e2df35b488c2ba7da1b3d8a1 AS build-alpine

# Support both "ubuntu" and "ubuntu-chiseled" for build stage, matching base mapping.
FROM build-ubuntu AS build-ubuntu-chiseled

FROM build-${BASE_IMAGE_TYPE} AS build
ARG BUILD_CONFIGURATION
ARG TARGETARCH
# The MSBuild server is on by default in .NET 11 and cannot stay running across Docker RUN steps.
ENV DOTNET_CLI_USE_MSBUILD_SERVER=false
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
