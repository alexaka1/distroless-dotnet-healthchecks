[![Docker Image Version (tag)](https://img.shields.io/docker/v/alexaka1/distroless-dotnet-healthchecks/latest?logo=docker&label=docker.io&cacheSeconds=3600)](https://hub.docker.com/repository/docker/alexaka1/distroless-dotnet-healthchecks)
[![Release images](https://github.com/alexaka1/distroless-dotnet-healthchecks/actions/workflows/release.yml/badge.svg?event=push)](https://github.com/alexaka1/distroless-dotnet-healthchecks/actions/workflows/release.yml)
[![Nightly build](https://github.com/alexaka1/distroless-dotnet-healthchecks/actions/workflows/nightly.yml/badge.svg)](https://github.com/alexaka1/distroless-dotnet-healthchecks/actions/workflows/nightly.yml)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/alexaka1/distroless-dotnet-healthchecks/badge)](https://scorecard.dev/viewer/?uri=github.com/alexaka1/distroless-dotnet-healthchecks)

# Docker HEALTHCHECK for .Net chiseled containers

Docker images can specify a [`HEALTHCHECK`](https://docs.docker.com/reference/dockerfile/#healthcheck) command to run a test to determine if the container is healthy. Docker compose also has a similar feature. This however is executed in the container itself, and not on the host. This creates a problem for [Distroless images](https://github.com/GoogleContainerTools/distroless), as they do not have common binaries like `curl` or `wget` installed by design. There have been many requests to expand on this functionality ([#183](https://github.com/GoogleContainerTools/distroless/issues/183), [#316](https://github.com/dotnet/sdk-container-builds/issues/316), [#4296](https://github.com/dotnet/dotnet-docker/discussions/4296)), but until official support is added by either Google, Docker or Microsoft, this utility is here to help.

This is a simple pre-compiled .Net app, that is able to run a health check against a list of URIs. It runs on the minimal `runtime-deps:*-chiseled-aot` image, so it will run on any chiseled as well.

## Usage

It works with any `.NET 8` or `.NET 9` base image (even those that are not chiseled). For example

```dockerfile
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled AS final
# Get the executable and copy it to /healthchecks
COPY --from=ghcr.io/alexaka1/distroless-dotnet-healthchecks:latest / /healthchecks
# Setup the healthcheck using the EXEC array syntax
HEALTHCHECK CMD ["/healthchecks/Distroless.HealthChecks", "--uri", "http://localhost:8080/healthz"]

# Start your app as normal
WORKDIR /app
ENTRYPOINT ["dotnet", "My.Awesome.Webapp.dll"]
```

The published docker image contains only the executable of the health check at root. This is so it can be conveniently copied inside a Dockerfile. But you can also get the binary from GitHub and copy it manually into your image.

It takes in a single argument named `uri`, which is a URI that the app will check. If the URI returns a 200 status code, the health check will pass.

If you don't want to use GitHub Container Registry, the image is also available on [Docker Hub](https://hub.docker.com/r/alexaka1/distroless-dotnet-healthchecks).

> [!NOTE]
> You can only use loopback address for the URIs. Using a URI that does not resolve to the container will result in a failure.

## Advanced Usage

Health check is compiled as AOT, so it can run on the most bare `runtime-deps:*-chiseled-aot` images with no issues. These aot images are only published on the nightly channel as of .NET 9.

It uses a [generic host](https://learn.microsoft.com/en-us/dotnet/core/extensions/generic-host?tabs=appbuilder), so you have the full [.NET Configuration system](https://learn.microsoft.com/en-us/dotnet/core/extensions/configuration) available to you. For example, you don't have to bake in your healthcheck uri into your image, you can use `DISTROLESS_HEALTHCHECKS_` prefixed environment variables to specify the runtime settings.

```dockerfile
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot

# Get the executable and copy it to any path you want
COPY --from=ghcr.io/alexaka1/distroless-dotnet-healthchecks:latest / /iamspecial
# Setup your healthcheck endpoints via environment variable in Dockerfile, or at runtime via `docker run -e DISTROLESS_HEALTHCHECKS_URIS__0="http://localhost/healthz" -e DISTROLESS_HEALTHCHECKS_URIS__1="http://localhost/some/other/endpoint"`
ENV DISTROLESS_HEALTHCHECKS_URI="http://localhost/healthz"
# Setup the healthcheck using the EXEC array syntax
HEALTHCHECK CMD ["/iamspecial/Distroless.HealthChecks"]

# Start your app as normal
WORKDIR /app
ENTRYPOINT ["./My.Awesome.Aot.WebApp"]
```

> [!IMPORTANT]
> For simplicity's sake the health check uses the generic host from `Host.CreateApplicationBuilder(settings)`. This means that if your app uses `DOTNET_` prefixed environment variables, they will interfere with the health check as they will be read by the host.

> [!NOTE]
> The `DISTROLESS_HEALTHCHECKS_` prefix environment variables are read after the `DOTNET_` prefixed environment variables, so if `DOTNET_` prefixed environment variables are defined, they will take precedence for certain defaults of the generic host. This may not be ideal for all use cases. Feel free to open an issue with your use case.

The image uses semver. It is recommended that you pin it to at least a major version, instead of `latest`. I.e. `ghcr.io/alexaka1/distroless-dotnet-healthchecks:1`.

### .NET Configuration

The `Uri` parameter is just a convenience input for baking in the url to the Dockerfile. You can however set logic to your builds to configure the underlying Uri array instead. Such as: `DISTROLESS_HEALTHCHECKS_Uris__0=http://localhost:8080/healthz` and `DISTROLESS_HEALTHCHECKS_Uris__1=http://localhost/some/other/path`.

## Building

You will need the .Net 9 SDK installed, along with docker and buildx. You don't need Node, unless you plan to open PRs, in which case it is recommended you also add changesets to your PRs.

On Windows you must use WSL2 as the docker backend.

### Tests

To run the tests, first build the test image:

```bash
docker build -f src/Distroless.HealthChecks/Dockerfile -t distroless-dotnet-healthchecks:test --target binary .
```

Then run the tests (it can take a long time):

```bash
dotnet test
```
