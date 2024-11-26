![Docker Image Version (tag)](https://img.shields.io/docker/v/alexaka1/distroless-dotnet-healthchecks/main?logo=docker&label=docker.io&cacheSeconds=3600&link=https%3A%2F%2Fhub.docker.com%2Frepository%2Fdocker%2Falexaka1%2Fdistroless-dotnet-healthchecks)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/alexaka1/distroless-dotnet-healthchecks/badge)](https://scorecard.dev/viewer/?uri=github.com/alexaka1/distroless-dotnet-healthchecks)

# Docker HEALTHCHECK for .Net chiseled containers

Docker images can specify a [`HEALTHCHECK`](https://docs.docker.com/reference/dockerfile/#healthcheck) command to run a test to determine if the container is healthy. Docker compose also has a similar feature. This however is executed in the container itself, and not on the host. This creates a problem for [Distroless images](https://github.com/GoogleContainerTools/distroless), as they do not have common binaries like `curl` or `wget` installed by design. There have been many requests to expand on this functionality ([#183](https://github.com/GoogleContainerTools/distroless/issues/183), [#316](https://github.com/dotnet/sdk-container-builds/issues/316), [#4296](https://github.com/dotnet/dotnet-docker/discussions/4296)), but until official support is added by either Google, Docker or Microsoft, this utility is here to help.

This is a simple pre-compiled .Net app, that is able to run a health check against a list of URIs. It runs on the minimal `runtime-deps:*-chiseled-aot` image, so it will run on any chiseled as well.

## Usage

TODO

## Building

You will need the .Net 9 SDK installed.

TODO

## Contributing

TODO
