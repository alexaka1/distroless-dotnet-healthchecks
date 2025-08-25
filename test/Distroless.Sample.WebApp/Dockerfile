ARG RUNTIME_TAG="9.0@sha256:52011e65ae82d61566a8a028ef72e0a77dbbab6c9233212fc28ad67bc55f1354"
ARG TARGET_FRAMEWORK="9.0"
ARG IMAGE="mcr.microsoft.com/dotnet/runtime"
ARG BUILD_CONFIGURATION=Release
ARG BASE_IMAGE_TYPE=ubuntu-chiseled

# Build SDK stages for glibc and musl targets
FROM mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview-noble-aot@sha256:71da6cef49113900e7ec74c9c712ee1f9237cd9bc2166881785230e72141ec28 AS build-ubuntu
FROM mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview-alpine-aot@sha256:52e4069eb51ca59307d9f048e41920ff180b4f39d3f524dc7de38851253357c4 AS build-alpine

# Map ubuntu-chiseled to ubuntu build SDK
FROM build-ubuntu AS build-ubuntu-chiseled

# Select build stage based on BASE_IMAGE_TYPE
FROM build-${BASE_IMAGE_TYPE} AS build
ARG TARGET_FRAMEWORK
ARG BUILD_CONFIGURATION
WORKDIR /src
COPY ["nuget.config", "./"]
COPY ["test/Distroless.Sample.WebApp/Distroless.Sample.WebApp.csproj", "test/Distroless.Sample.WebApp/"]
RUN dotnet restore "test/Distroless.Sample.WebApp/Distroless.Sample.WebApp.csproj"
COPY ["test/", "./test/"]
WORKDIR "/src/test/Distroless.Sample.WebApp"
RUN dotnet build "Distroless.Sample.WebApp.csproj" -c $BUILD_CONFIGURATION -o /app/build -f net${TARGET_FRAMEWORK}

FROM build AS publish
ARG TARGET_FRAMEWORK
ARG BUILD_CONFIGURATION
RUN dotnet publish "Distroless.Sample.WebApp.csproj" -c $BUILD_CONFIGURATION -o /app/publish -f net${TARGET_FRAMEWORK}

FROM ${IMAGE}:${RUNTIME_TAG} AS final
EXPOSE 8080
EXPOSE 8081
WORKDIR /healthchecks
COPY --from=distroless-dotnet-healthchecks:test / .
HEALTHCHECK --interval=1s --timeout=1s --retries=3 \
   CMD ["/healthchecks/Distroless.HealthChecks"]
USER $APP_UID
WORKDIR /app
COPY --from=publish --chown=$APP_UID /app/publish .

ENTRYPOINT ["./Distroless.Sample.WebApp"]
