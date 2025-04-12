#!/usr/bin/env sh

set -e

curl -fsSL https://dot.net/v1/dotnet-install.sh | bash -s -- -i /usr/share/dotnet --channel 10.0 --quality preview
dotnet workload update
dotnet restore
dotnet build -c Release
