# Repository Guidelines

## Project Structure & Modules
- `src/Distroless.HealthChecks`: AOT .NET app and Dockerfile; config in `appsettings*.json`.
- `test/Distroless.HealthChecks.Test`: xUnit v3 tests using Microsoft Testing Platform + Testcontainers.
- `test/Distroless.Sample.WebApp`: Minimal app and Dockerfiles used by container tests.
- `build/`: Helper scripts (e.g., `version.sh`).
- `.changeset/`: Release notes and versioning metadata. Root solution: `Distroless.sln`.

## Build, Test, and Development
- Build: `dotnet build Distroless.sln -c Release` — restores and compiles all projects.
- Test image (once): `docker build -f src/Distroless.HealthChecks/Dockerfile -t distroless-dotnet-healthchecks:test --target binary .` — builds the healthcheck binary image used in tests.
- Tests: `dotnet test` — runs xUnit tests; pulls images and may take time.
- Licenses: `pnpm check-licenses:dotnet` — validates NuGet license policy.
- Changeset: `pnpm changeset` — add release notes when behavior/image output changes.

## Coding Style & Naming
- Follow `.editorconfig`. Treat nullable warnings as actionable.
- C#: file-scoped namespaces; `PascalCase` for types/members; `camelCase` for locals/params.
- One public type per file; keep methods small and focused. Prefer explicit types for public APIs.

## Testing Guidelines
- Framework: xUnit v3 with Microsoft Testing Platform; Docker-backed tests via Testcontainers.
- Structure: group by scenario (e.g., `ParameterTests/`, `HealthyTests/Net9/...`).
- Naming: `<Scenario>Test.cs` with clear `[Fact]`/`[Theory]` cases.
- Prereqs: Docker (with buildx) running locally before `dotnet test`.

## Commit & Pull Requests
- Commits: imperative, concise; reference issues/PRs when relevant (e.g., `Update dotnet monorepo (#648)`).
- PRs: clear description, motivation, and test impact; attach logs for failures.
- Requirements: green CI, local `dotnet test` pass, and a changeset for user-visible changes.

## Security & Configuration Tips
- Configure via `DISTROLESS_HEALTHCHECKS_` env vars (e.g., `DISTROLESS_HEALTHCHECKS_Uris__0=http://localhost/healthz`).
- Be mindful that `DOTNET_` env vars can influence host defaults.
- Pin container images by major tag (e.g., `ghcr.io/...:1`) instead of `latest`.

