ARG RUNTIME_TAG="9.0@sha256:03fe3b9f932fc9c3d1a76c6a0fecc8e2f1b9ed302deda29f920d81e50c9aad6f"
ARG TARGET_FRAMEWORK="9.0"
ARG IMAGE="mcr.microsoft.com/dotnet/runtime"
ARG BUILD_CONFIGURATION=Release
FROM mcr.microsoft.com/dotnet/nightly/sdk:10.0-preview-noble@sha256:087401b98fabedb9fdaaf965a925bfa9b78ef492bda419c2fbda36a6d80d11e4 AS build
ARG TARGET_FRAMEWORK
ARG BUILD_CONFIGURATION
RUN apt update && apt install clang zlib1g-dev -y
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
