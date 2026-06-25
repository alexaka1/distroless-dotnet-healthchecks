ARG RUNTIME_TAG="9.0@sha256:de0826f037d10d1ca4dab10c27d460b42a94702da9d4ffbf60fba26d079c6532"
ARG IMAGE="mcr.microsoft.com/dotnet/runtime"
ARG BUILD_CONFIGURATION=Release
ARG BASE_IMAGE_TYPE=ubuntu-chiseled
ARG HEALTHCHECK_IMAGE=distroless-dotnet-healthchecks:test

# Build SDK stages for glibc and musl targets
FROM mcr.microsoft.com/dotnet/sdk:10.0-noble-aot@sha256:47f56dc3e5bf7b62d878c98aa7b31848ac9167462789fa73220adcd1af064e37 AS build-ubuntu
FROM mcr.microsoft.com/dotnet/sdk:10.0-alpine-aot@sha256:999d96611287a92e064668b8aec18ee97cd7c2f3e5796d22f1e8b720d944ff69 AS build-alpine

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
