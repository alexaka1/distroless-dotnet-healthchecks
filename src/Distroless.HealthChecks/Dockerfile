FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:11e04d747aad8555f144f8460da7bbb93a810734a8172fbb6cc81c6a2142c8ee AS base
WORKDIR /app

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/nightly/sdk:9.0-noble-aot@sha256:5f78b348ec6a8f782abd83eda14021c05fe5c87369517b3d363b1239f31762d7 AS build
ARG BUILD_CONFIGURATION=Release
ARG TARGETARCH
WORKDIR /src
COPY ["nuget.config", "./"]
COPY ["src/Distroless.HealthChecks/Distroless.HealthChecks.csproj", "src/Distroless.HealthChecks/"]
RUN dotnet restore "src/Distroless.HealthChecks/Distroless.HealthChecks.csproj" -a $TARGETARCH
COPY ["src/", "./src/"]
WORKDIR "/src/src/Distroless.HealthChecks"
RUN dotnet build "Distroless.HealthChecks.csproj" -c $BUILD_CONFIGURATION -o /app/build -a $TARGETARCH

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
ARG TARGETARCH
RUN dotnet publish "Distroless.HealthChecks.csproj" -c $BUILD_CONFIGURATION -a $TARGETARCH -o /app/publish

FROM scratch AS binary
COPY --from=publish /app/publish .

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["./Distroless.HealthChecks"]
CMD ["--urls", "http://localhost:8080/healthz"]
