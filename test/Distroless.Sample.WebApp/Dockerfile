ARG RUNTIME_TAG="9.0@sha256:03fe3b9f932fc9c3d1a76c6a0fecc8e2f1b9ed302deda29f920d81e50c9aad6f"
ARG TARGET_FRAMEWORK="9.0"
ARG IMAGE="mcr.microsoft.com/dotnet/runtime"
ARG BUILD_CONFIGURATION=Release
FROM mcr.microsoft.com/dotnet/nightly/sdk:9.0-noble-aot@sha256:6db08aea7e94ed442f4f5defc744878b45c4b4509e1e3e63a406810c91241a90 AS build
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
