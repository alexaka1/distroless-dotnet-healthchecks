ARG RUNTIME_TAG="9.0@sha256:b7e69cfa9992bd5433b08216f769683c2fc20736b0664f7f89678fd73059a5f8"
ARG IMAGE="mcr.microsoft.com/dotnet/runtime"
ARG BUILD_CONFIGURATION=Release
ARG BASE_IMAGE_TYPE=ubuntu-chiseled
ARG HEALTHCHECK_IMAGE=distroless-dotnet-healthchecks:test

# Build SDK stages for glibc and musl targets
FROM mcr.microsoft.com/dotnet/sdk:10.0-noble-aot@sha256:02eee820d4d66183767fcc93c131dcd0a3a545f3a9b03b59a68c10cc013f812f AS build-ubuntu
FROM mcr.microsoft.com/dotnet/sdk:10.0-alpine-aot@sha256:4b8e54aca463d6acc5f5f70b959aea8ef20fd494a508e7dfe1fee82a153f73ef AS build-alpine

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
