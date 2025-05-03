ARG RUNTIME_TAG="9.0@sha256:9d42d7d4d892e2afc571884e9b67f3b1ebb361166ee14151fc6d1bd539cbfeb3"
ARG TARGET_FRAMEWORK="9.0"
ARG IMAGE="mcr.microsoft.com/dotnet/runtime"
ARG BUILD_CONFIGURATION=Release
FROM mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview-noble-aot@sha256:483ee3898a784e834bafbaa2a2046115a1d28a43f4d7713f307f610ae4bcd361 AS build
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
