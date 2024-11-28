ARG RUNTIME_TAG="9.0"
ARG BUILD_CONFIGURATION=Release
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
ARG RUNTIME_TAG
ARG BUILD_CONFIGURATION
WORKDIR /src
COPY ["nuget.config", "./"]
COPY ["test/Distroless.Sample.WebApp/Distroless.Sample.WebApp.csproj", "test/Distroless.Sample.WebApp/"]
RUN dotnet restore "test/Distroless.Sample.WebApp/Distroless.Sample.WebApp.csproj"
COPY ["test/", "./test/"]
WORKDIR "/src/test/Distroless.Sample.WebApp"
RUN dotnet build "Distroless.Sample.WebApp.csproj" -c $BUILD_CONFIGURATION -o /app/build -f net${RUNTIME_TAG}

FROM build AS publish
ARG RUNTIME_TAG
ARG BUILD_CONFIGURATION
RUN dotnet publish "Distroless.Sample.WebApp.csproj" -c $BUILD_CONFIGURATION /p:PublishAot=false -o /app/publish /p:UseAppHost=false -f net${RUNTIME_TAG}

FROM mcr.microsoft.com/dotnet/aspnet:${RUNTIME_TAG} AS final
EXPOSE 8080
EXPOSE 8081
WORKDIR /healthchecks
COPY --from=distroless-dotnet-healthchecks:test / .
HEALTHCHECK --interval=1s --timeout=1s --retries=3 CMD cd /healthchecks && ./Distroless.HealthChecks --urls http://localhost:8080/healthz
USER $APP_UID
WORKDIR /app
COPY --from=publish --chown=$APP_UID /app/publish .

ENTRYPOINT ["dotnet", "Distroless.Sample.WebApp.dll"]
