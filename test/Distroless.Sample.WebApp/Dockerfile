ARG RUNTIME_TAG="9.0@sha256:e64ff42d964bcb32ccd4644ea5e4b114ffaf10d91df55c11ce895d670dce23d3"
ARG IMAGE="mcr.microsoft.com/dotnet/runtime"
ARG BUILD_CONFIGURATION=Release
ARG BASE_IMAGE_TYPE=ubuntu-chiseled
ARG HEALTHCHECK_IMAGE=distroless-dotnet-healthchecks:test

# Build SDK stages for glibc and musl targets
FROM mcr.microsoft.com/dotnet/sdk:10.0-noble-aot@sha256:977c117b98abe301eeb4c2ed3f8deebf8b8f11e65549ee7886581d2b41641adb AS build-ubuntu
FROM mcr.microsoft.com/dotnet/sdk:10.0-alpine-aot@sha256:804af59ab9617c61c0a7f57d548c76e436d4c32e36c77c006aa8064c608f70fb AS build-alpine

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
