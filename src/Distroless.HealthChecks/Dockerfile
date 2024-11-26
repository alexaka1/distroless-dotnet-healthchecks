FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled AS base
WORKDIR /app

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/sdk:9.0-noble-aot AS build
ARG BUILD_CONFIGURATION=Release
ARG TARGETARCH
WORKDIR /src
COPY ["src/Distroless.HealthChecks/Distroless.HealthChecks.csproj", "src/Distroless.HealthChecks/"]
RUN dotnet restore "src/Distroless.HealthChecks/Distroless.HealthChecks.csproj" -a $TARGETARCH
COPY . .
WORKDIR "/src/src/Distroless.HealthChecks"
RUN dotnet build "Distroless.HealthChecks.csproj" -c $BUILD_CONFIGURATION -o /app/build -a $TARGETARCH

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
ARG TARGETARCH
RUN dotnet publish "Distroless.HealthChecks.csproj" -c $BUILD_CONFIGURATION -a $TARGETARCH -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["./Distroless.HealthChecks"]
CMD ["--", "http://localhost:8080/healthz"]
