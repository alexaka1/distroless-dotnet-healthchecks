ARG BUILDKIT_SBOM_SCAN_CONTEXT=true
ARG BUILDKIT_SBOM_SCAN_STAGE=true
ARG BUILD_CONFIGURATION=Release
FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:716f5a59534a1a93edced745be5b2ba78f5a3a29caabf510cae923166dd2496c AS base
WORKDIR /app

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/sdk:9.0-noble-aot@sha256:7d2b6ef60f9c3711969a101fad228046f18378aeefad59088ee7351bb4186ed0 AS build
ARG BUILD_CONFIGURATION
ARG TARGETARCH
WORKDIR /src
COPY ["nuget.config", "./"]
COPY ["src/Distroless.HealthChecks/Distroless.HealthChecks.csproj", "src/Distroless.HealthChecks/"]
RUN dotnet restore "src/Distroless.HealthChecks/Distroless.HealthChecks.csproj" -a $TARGETARCH
COPY ["src/", "./src/"]
WORKDIR "/src/src/Distroless.HealthChecks"
RUN dotnet build "Distroless.HealthChecks.csproj" --no-restore -c $BUILD_CONFIGURATION -o /app/build -a $TARGETARCH

FROM build AS publish
ARG BUILD_CONFIGURATION
ARG TARGETARCH
RUN dotnet publish "Distroless.HealthChecks.csproj" -c $BUILD_CONFIGURATION -a $TARGETARCH -o /app/publish

FROM scratch AS binary
COPY --from=publish /app/publish .

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["./Distroless.HealthChecks"]
CMD ["--uri", "http://localhost:8080/healthz"]
