ARG BUILDKIT_SBOM_SCAN_CONTEXT=true
ARG BUILDKIT_SBOM_SCAN_STAGE=true
ARG BUILD_CONFIGURATION=Release
ARG BASE_IMAGE_TYPE=ubuntu-chiseled
FROM mcr.microsoft.com/dotnet/runtime-deps:11.0-resolute-chiseled@sha256:0a70ecd3350d11f4a5377be3a9e44372ef28281ee162b71f498ed69fea901745 AS base-ubuntu
FROM mcr.microsoft.com/dotnet/runtime-deps:11.0-alpine@sha256:f4d3801cac2204e2f961a931dd67a99975a436a8b5ad055898bc7029b712d44d AS base-alpine

# Support both "ubuntu" and "ubuntu-chiseled" values for BASE_IMAGE_TYPE.
FROM base-ubuntu AS base-ubuntu-chiseled

FROM base-${BASE_IMAGE_TYPE} AS base
WORKDIR /app

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/sdk:11.0-resolute-aot@sha256:a4a1c55d6ba1e6295a715db06ddacad12579ebee7ce942d4d764e16074f5dc49 AS build-ubuntu
# alpine does not use cross compilation, because https://github.com/dotnet/runtime/issues/92294, also see https://github.com/dotnet/aspire/pull/10275 for more context
# TL;DR native builder to build for a specific `arch`
FROM mcr.microsoft.com/dotnet/nightly/sdk:11.0-alpine-aot@sha256:63784bfc003c289a4a358036091098ed46c2bb6bf97a47e05973847c17bc0c42 AS build-alpine

# Support both "ubuntu" and "ubuntu-chiseled" for build stage, matching base mapping.
FROM build-ubuntu AS build-ubuntu-chiseled

FROM build-${BASE_IMAGE_TYPE} AS build
ARG BUILD_CONFIGURATION
ARG TARGETARCH
# The MSBuild server is on by default in .NET 11 and cannot stay running across Docker RUN steps.
ENV DOTNET_CLI_USE_MSBUILD_SERVER=false
WORKDIR /src
COPY ["nuget.config", "./"]
COPY [".config/dotnet-tools.json", ".config/"]
COPY ["build/finish-container-sbom.cs", "build/"]
COPY ["src/Distroless.HealthChecks/Distroless.HealthChecks.csproj", "src/Distroless.HealthChecks/"]
RUN dotnet restore "src/Distroless.HealthChecks/Distroless.HealthChecks.csproj" -a $TARGETARCH \
    && dotnet tool restore --tool-manifest .config/dotnet-tools.json
COPY ["src/", "./src/"]
WORKDIR "/src/src/Distroless.HealthChecks"

FROM build AS publish
ARG BUILD_CONFIGURATION
ARG TARGETARCH
ARG BASE_IMAGE_TYPE
ARG SOURCE_DATE_EPOCH
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
