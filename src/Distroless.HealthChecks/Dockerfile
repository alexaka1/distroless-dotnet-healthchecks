ARG BUILDKIT_SBOM_SCAN_CONTEXT=true
ARG BUILDKIT_SBOM_SCAN_STAGE=true
ARG BUILD_CONFIGURATION=Release
FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70 AS base
WORKDIR /app

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/sdk:9.0-noble-aot@sha256:65b53e8f0d98e925c607237f65f2eda197b0cc11cf68b7a7a83e30dee5e25114 AS build
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
