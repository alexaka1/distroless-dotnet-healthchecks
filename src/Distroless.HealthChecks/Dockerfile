ARG BUILDKIT_SBOM_SCAN_CONTEXT=true
ARG BUILDKIT_SBOM_SCAN_STAGE=true
ARG BUILD_CONFIGURATION=Release
FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:b4ed0cd337e357e177ac2caa28ccffbf7f48c7da267bd59a67db0388ec0e7967 AS base
WORKDIR /app

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/sdk:9.0-noble-aot@sha256:4eacf6c5e68993bb708cf9d421ed5efa487f57aab43d7c2aef7c0fe3b88217b7 AS build
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
