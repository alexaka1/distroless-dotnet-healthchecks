---
applyTo: ".github/workflows/*.yml"
---
# Secure GitHub Actions (MUST/SHOULD/NEVER)

Purpose: enforce security best practices for workflows, actions, and runners.

Permissions and tokens
- MUST set default `GITHUB_TOKEN` to read-only; elevate per job only.
- MUST restrict token scopes to minimum required.
- SHOULD disable workflows creating or approving PRs unless required.
```yaml
permissions:
  contents: read
# jobs.<id>.permissions: { ...only what is needed... }
```

Secrets
- MUST store no plaintext secrets in workflows.
- MUST mask sensitive non-secret values via `::add-mask::<value>`.
- MUST split structured data; NEVER store JSON/XML/YAML blobs as one secret.
- MUST register any derived or transformed secret values (e.g., JWT, base64).
- MUST rotate and remove unused secrets; delete leaked logs and rotate creds.
- SHOULD require reviewers for access to environment secrets.

Leak prevention
- MUST avoid echoing secrets; NEVER use `set -x` with secrets present.
- SHOULD validate logs on success/failure paths to confirm redaction.

Script injection
- SHOULD use actions instead of inline shell for untrusted input.
- MUST pass untrusted input via env vars and quote; NEVER eval untrusted data.
```yaml
- name: Safe input
  env:
    TITLE: ${{ github.event.pull_request.title }}
  run: |
    if [[ "$TITLE" =~ ^prefix ]]; then echo ok; else exit 1; fi
```

Third-party actions and reusable workflows
- MUST pin to full commit SHA; verify SHA from upstream repo.
- SHOULD audit action/workflow code for secret handling and network egress.
- SHOULD use tags only if creator is trusted; tags are movable.
```yaml
uses: owner/action@<full_commit_sha>
```

Governance
- MUST protect `.github/workflows/` via CODEOWNERS and required reviews.

Dependency and vulnerability management
- MUST enable Dependabot alerts and security updates for actions.
- SHOULD use dependency graph to review actions, SHAs/tags, advisories.
- SHOULD use Renovate to track dependencies instead of latest always

Cloud authentication
- SHOULD use OIDC for short-lived, scoped cloud/Vault access tokens.
- NOTE: AWS OIDC custom claims are not supported.

Runners
- SHOULD prefer GitHub-hosted runners (ephemeral, isolated).
- MUST avoid self-hosted on public repos; be cautious on private/internal.
- SHOULD segment with runner groups and restrict repo/org access.
- MUST minimize secrets and network reachability on runner hosts.
- MUST avoid passing secrets via CLI args (visible in process lists).
- SHOULD use JIT self-hosted runners; ensure clean state between jobs.
- SHOULD review runner image SBOMs and scan for vulnerabilities.
- SHOULD use `${{ runner.temp }}` for temporary files.
- NEVER omit `timeout-minutes` value from jobs
- NEVER use `if: always()` for any task that could suffer from a critical failure
  - e.g., getting sources, otherwise the workflow may hang until it times out 

Auditing and monitoring
- MUST monitor org/repo audit logs for Actions events
  (e.g., org.update_actions_secret).
- SHOULD review workflow run logs regularly for anomalies or leaks.
