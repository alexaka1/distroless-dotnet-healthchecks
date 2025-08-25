# Distroless .NET HealthChecks

**ALWAYS follow these instructions first. Only fallback to additional search and context gathering if the information in these instructions is incomplete or found to be in error.**

Distroless .NET HealthChecks is an AOT (Ahead-of-Time) compiled .NET application that provides health checking capabilities for containerized applications running on minimal distroless/chiseled container images.

## Context7 Integration

When the user requests code examples, setup or configuration steps, or library/API documentation, use the Context7 tools to provide up-to-date information:

1. **Use `context7-resolve-library-id`** first to find the appropriate library ID for .NET-related queries
2. **Use `context7-get-library-docs`** to fetch current documentation and code examples

### Context7 Usage Guidelines

- **For .NET framework questions**: Resolve "microsoft/dotnet" or specific framework components
- **For ASP.NET Core health checks**: Resolve "microsoft/aspnetcore" and focus on health check topics
- **For Docker/container questions**: Resolve "docker/docs" or relevant container platform documentation
- **For NuGet packages**: Resolve the specific package name (e.g., "Microsoft.Extensions.Diagnostics.HealthChecks")

Always prefer Context7 documentation over general web searches when users need current API references, setup instructions, or code examples related to:
- .NET 9.0/.NET 10.0 framework features
- ASP.NET Core health check implementation
- Docker container best practices
- NuGet package usage patterns
- AOT compilation guidance

## Working Effectively

### Essential Requirements
Install the following tools and SDKs in order:

1. **.NET 9.0 SDK** (required for main application):
   ```bash
   curl -fsSL https://dot.net/v1/dotnet-install.sh | bash -s -- --channel 9.0
   export PATH="$HOME/.dotnet:$PATH"
   ```

2. **.NET 10.0 preview SDK** (required for tests and multi-framework sample):
   ```bash
   curl -fsSL https://dot.net/v1/dotnet-install.sh | bash -s -- --channel 10.0 --quality preview
   ```
   Note: If .NET 10 preview is not available, you can still work with the main application using .NET 9.

3. **Node.js and pnpm** (required for changesets and licensing):
   ```bash
   npm install -g pnpm
   pnpm install
   ```

4. **Docker with buildx** (required for container builds and tests):
   ```bash
   docker version  # Verify Docker is available
   ```

### Core Build Commands
- Build main project: `dotnet build src/Distroless.HealthChecks/Distroless.HealthChecks.csproj -c Release` -- takes 2-15 seconds (faster after initial restore). NEVER CANCEL. Set timeout to 30+ seconds.
- Build full solution: `dotnet build Distroless.sln -c Release` -- requires .NET 10 preview, takes 10-20 seconds. NEVER CANCEL. Set timeout to 60+ seconds.
- Restore .NET tools: `dotnet tool restore` -- takes 5-10 seconds. NEVER CANCEL. Set timeout to 30+ seconds.

### Docker Build Commands
- Build test image (ubuntu): `docker build -f src/Distroless.HealthChecks/Dockerfile -t distroless-dotnet-healthchecks:test --target binary .` -- takes 5-15 minutes. NEVER CANCEL. Set timeout to 20+ minutes.
- Build test image (alpine): `docker build -f src/Distroless.HealthChecks/Dockerfile -t distroless-dotnet-healthchecks:test-alpine --target binary --build-arg BASE_IMAGE_TYPE=alpine .` -- takes 5-15 minutes. NEVER CANCEL. Set timeout to 20+ minutes.

### Testing Commands
- Run all tests: `dotnet test` -- takes 10-30 minutes depending on image pulls. NEVER CANCEL. Set timeout to 45+ minutes.
- Run tests (alpine): `BASE_IMAGE_TYPE=alpine dotnet test` -- takes 10-30 minutes. NEVER CANCEL. Set timeout to 45+ minutes.

### License and Quality Commands
- Check licenses: `pnpm check-licenses:dotnet` -- requires .NET tools restore first, takes 30-60 seconds. NEVER CANCEL. Set timeout to 120+ seconds.

### Changeset Commands for Release Management
- Create changeset for user-visible changes: `pnpm changeset` -- takes 5-10 seconds. NEVER CANCEL. Set timeout to 30+ seconds.

**IMPORTANT**: Versioning is fully automated by CI. NEVER run `pnpm version` manually. Instead, create changesets using `pnpm changeset` to document changes that warrant a new release.

## Manual Validation

ALWAYS manually validate the health check functionality after making changes:

1. **Start a test HTTP server**:
   ```bash
   python3 -m http.server 8080 &
   ```

2. **Test healthy endpoint** (should return exit code 0):
   ```bash
   dotnet run --project src/Distroless.HealthChecks/Distroless.HealthChecks.csproj --configuration Release -- --uri http://localhost:8080
   echo "Exit code: $?"
   ```

3. **Test unhealthy endpoint** (should return exit code 1):
   ```bash
   dotnet run --project src/Distroless.HealthChecks/Distroless.HealthChecks.csproj --configuration Release -- --uri http://localhost:9999
   echo "Exit code: $?"
   ```

4. **Test with environment variable configuration**:
   ```bash
   DISTROLESS_HEALTHCHECKS_URIS__0="http://localhost:8080" dotnet run --project src/Distroless.HealthChecks/Distroless.HealthChecks.csproj --configuration Release
   echo "Exit code: $?"
   ```

5. Stop the test server: `pkill -f "python3 -m http.server"` or use Ctrl+C if running in foreground

## Repository Structure

### Key Directories
- `src/Distroless.HealthChecks/`: Main AOT .NET app (.NET 9.0) and Dockerfile
- `test/Distroless.HealthChecks.Test/`: xUnit v3 tests (.NET 9.0) using Testcontainers
- `test/Distroless.Sample.WebApp/`: Multi-framework sample app (.NET 8/9/10) for container tests
- `build/`: Build helper scripts (`version.sh`, `qodana.sh`)
- `.changeset/`: Release notes and versioning metadata
- `.github/workflows/`: GitHub Actions CI/CD pipelines

### Key Files
- `Distroless.sln`: Root solution file containing all projects
- `package.json`: pnpm scripts for changesets and licensing
- `allowed-licenses.json`: License policy configuration
- `nuget.config`: NuGet package source configuration
- `AGENTS.md`: Existing repository guidelines

## Application Configuration

The health check application uses .NET's configuration system:

- **Command line**: `--uri http://localhost:8080/health`
- **Environment variables**: `DISTROLESS_HEALTHCHECKS_URIS__0=http://localhost:8080/health`
- **Configuration files**: `appsettings.json`, `appsettings.Development.json`

IMPORTANT: `DOTNET_` prefixed environment variables can interfere with the health check execution.

## Common Issues and Limitations

- **Certificate errors in Docker builds**: Network/firewall limitations may cause SSL certificate errors with NuGet restore. This is environmental and typically works in CI/CD.
- **.NET 10 preview availability**: If .NET 10 preview SDK installation fails, you can still work with the main application using .NET 9.
- **Multi-framework targets**: The sample web app targets .NET 8.0, 9.0, and 10.0. Build failures on .NET 10 are expected if the preview SDK is not available.
- **Test image dependencies**: Tests require Docker image `distroless-dotnet-healthchecks:test` to be built first.

## CI/CD Integration

Always validate changes pass CI requirements:

1. Run build: `dotnet build Distroless.sln -c Release`
2. Run tests: `dotnet test` (after building Docker test image)  
3. Check licenses: `pnpm check-licenses:dotnet`
4. Manual validation: Complete health check scenarios as documented above
5. Create changeset for user-visible changes: `pnpm changeset`

### Changesets for Release Management

This repository uses [Changesets](https://github.com/changesets/changesets) to manage releases and changelogs:

- **Create changeset**: `pnpm changeset` - Creates a markdown file describing your changes and their impact level (patch/minor/major)
- **Changeset workflow**: For any user-visible changes (bug fixes, new features, breaking changes), create a changeset that will be used to generate release notes
- **Automated versioning**: CI automatically handles version bumps and publishing based on merged changesets
- **Empty changesets**: Use `pnpm changeset --empty` for changes that don't affect the published package (documentation, tests, build changes)

### GitHub Actions Workflow Best Practices

When working with GitHub Actions workflows in this repository:

- **NEVER use `if: always()`** - This can create deadlocked jobs that cannot be cancelled
- **Use `if: ${{ !cancelled() }}` instead** - This allows proper job cancellation while still running cleanup steps
- This applies to all workflow steps that should run regardless of previous step failures

## Quick Reference Commands

```bash
# Setup (run once)
curl -fsSL https://dot.net/v1/dotnet-install.sh | bash -s -- --channel 9.0
export PATH="$HOME/.dotnet:$PATH"
npm install -g pnpm && pnpm install
dotnet tool restore

# Build and validate
dotnet build src/Distroless.HealthChecks/Distroless.HealthChecks.csproj -c Release
python3 -m http.server 8080 &
dotnet run --project src/Distroless.HealthChecks/Distroless.HealthChecks.csproj -c Release -- --uri http://localhost:8080
pkill -f "python3 -m http.server"

# Before committing
dotnet build Distroless.sln -c Release  # if .NET 10 available
pnpm check-licenses:dotnet  # if .NET 10 available
# Create changeset for user-visible changes: pnpm changeset
```