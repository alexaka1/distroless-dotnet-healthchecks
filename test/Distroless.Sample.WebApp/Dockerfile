ARG RUNTIME_TAG="9.0@sha256:5af99d75725a013279a7d915e92d1c037c3a821025e0bdbe0e542023c219e682"
ARG IMAGE="mcr.microsoft.com/dotnet/runtime"
ARG BUILD_CONFIGURATION=Release
ARG BASE_IMAGE_TYPE=ubuntu-chiseled
ARG HEALTHCHECK_IMAGE=distroless-dotnet-healthchecks:test

# Build SDK stages for glibc and musl targets
FROM mcr.microsoft.com/dotnet/sdk:10.0-noble-aot@sha256:d68a5e260330b659f7eae596a255bddbdc4e406e3579eb2d85d718ac58dd7dcb AS build-ubuntu
FROM mcr.microsoft.com/dotnet/sdk:10.0-alpine-aot@sha256:267959862804c09744aba282a5afa9b8a3f2493476081d77cff3e045dadd4001 AS build-alpine

# Map ubuntu-chiseled to ubuntu build SDK
FROM build-ubuntu AS build-ubuntu-chiseled

# Select build stage based on BASE_IMAGE_TYPE
FROM build-${BASE_IMAGE_TYPE} AS build
ARG BUILD_CONFIGURATION
WORKDIR /src
COPY ["nuget.config", "./"]
COPY ["test/Distroless.Sample.WebApp/Distroless.Sample.WebApp.csproj", "test/Distroless.Sample.WebApp/"]
RUN dotnet restore "test/Distroless.Sample.WebApp/Distroless.Sample.WebApp.csproj"
COPY ["test/", "./test/"]
WORKDIR "/src/test/Distroless.Sample.WebApp"
RUN dotnet build "Distroless.Sample.WebApp.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION
RUN dotnet publish "Distroless.Sample.WebApp.csproj" -c $BUILD_CONFIGURATION -o /app/publish

FROM ${HEALTHCHECK_IMAGE} AS local-healthcheck

FROM ${IMAGE}:${RUNTIME_TAG} AS final
EXPOSE 8080
EXPOSE 8081
WORKDIR /healthchecks
COPY --from=local-healthcheck / .
HEALTHCHECK --interval=1s --timeout=1s --retries=3 \
   CMD ["/healthchecks/Distroless.HealthChecks"]
USER $APP_UID
WORKDIR /app
COPY --from=publish --chown=$APP_UID /app/publish .

ENTRYPOINT ["./Distroless.Sample.WebApp"]
