#!/usr/bin/env bash
# End-to-end verification mirroring release-distroless-image.yml + release-github append step.
# amd64: full buildx (provenance+sbom+dual outputs) + measure locally.
# arm64: build requires native arm64 runner (CI); validates CI artifacts + measure contract.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

VERIFY_ROOT="${VERIFY_ROOT:-/tmp/e2e-release-binary-size}"
BUILDX_BUILDER="${BUILDX_BUILDER:-e2e-verify}"
REPO="${BINARY_SIZE_REPO:-alexaka1/distroless-dotnet-healthchecks}"
TAG="${BINARY_SIZE_TAG:-distroless-dotnet-healthchecks@1.5.8}"
CI_RUN_ID="${CI_ARTIFACTS_RUN_ID:-28677150779}"
ALL_SIZES_DIR="$VERIFY_ROOT/all-binary-sizes"

rm -rf "$VERIFY_ROOT"
mkdir -p "$ALL_SIZES_DIR"

pass() { echo "PASS: $*"; }
fail() { echo "FAIL: $*" >&2; exit 1; }

echo "=== E2E verify release binary size (tag=$TAG) ==="

if ! docker buildx inspect "$BUILDX_BUILDER" >/dev/null 2>&1; then
  docker buildx create --name "$BUILDX_BUILDER" --driver docker-container --use
fi
docker buildx inspect --bootstrap "$BUILDX_BUILDER" >/dev/null

dotnet build build/release-binary-size.cs -v q

matrix_build_measure_amd64() {
  local variant="$1"
  local platform="linux/amd64"
  local safe_platform="linux-amd64"
  local publish_dir="$VERIFY_ROOT/binary-publish-$variant-$safe_platform"
  local sizes_dir="$VERIFY_ROOT/binary-sizes-$variant-$safe_platform"
  local metadata="$VERIFY_ROOT/metadata-$variant-$safe_platform.json"

  rm -rf "$publish_dir" "$sizes_dir"
  mkdir -p "$publish_dir" "$sizes_dir"

  echo "--- buildx [CI-faithful]: platform=$platform variant=$variant ---"
  docker buildx build \
    --builder "$BUILDX_BUILDER" \
    --target binary \
    --platform "$platform" \
    --build-arg "BASE_IMAGE_TYPE=$variant" \
    --build-arg BUILD_CONFIGURATION=Release \
    -f src/Distroless.HealthChecks/Dockerfile \
    --provenance mode=max \
    --sbom=true \
    --tag "ghcr.io/test-owner/distroless-dotnet-healthchecks" \
    --output "type=local,dest=$publish_dir" \
    --output "type=image,push=false,name-canonical=true" \
    --metadata-file "$metadata" \
    . >/dev/null

  test -f "$publish_dir/Distroless.HealthChecks" || fail "missing executable in $publish_dir"
  test -f "$publish_dir/provenance.json" || fail "expected provenance.json in local export (CI has provenance enabled)"
  ls "$publish_dir"/sbom*.spdx.json >/dev/null 2>&1 || fail "expected sbom files in local export"

  local digest
  digest="$(python3 -c "import json; print(json.load(open('$metadata'))['containerimage.digest'])")"
  [[ "$digest" =~ ^sha256:[A-Fa-f0-9]{64}$ ]] || fail "invalid digest: $digest"

  echo "--- measure: platform=$platform variant=$variant ---"
  dotnet run build/release-binary-size.cs -- measure \
    --publish-dir "$publish_dir" \
    --variant "$variant" \
    --platform "$platform" \
    --output "$sizes_dir"

  local json="$sizes_dir/$variant-$safe_platform.json"
  validate_measurement_json "$json"
  cp "$json" "$ALL_SIZES_DIR/"
  pass "amd64 build+measure $variant"
}

validate_measurement_json() {
  local json="$1"
  test -f "$json" || fail "missing $json"
  python3 - "$json" <<'PY'
import json, sys
m = json.load(open(sys.argv[1]))
for key in ("variant", "platform", "executable", "total"):
    assert key in m, f"missing key {key}"
exe, total = m["executable"], m["total"]
assert exe > 1_000_000, exe
assert total >= exe, (total, exe)
assert total - exe < 10_000, f"total inflated (SBOM not excluded?): total={total} exe={exe}"
print(f"  {m['variant']} {m['platform']}: executable={exe} total={total}")
PY
}

for variant in ubuntu-chiseled alpine; do
  matrix_build_measure_amd64 "$variant"
done

echo "--- arm64: validate CI artifacts from run $CI_RUN_ID (native arm64 runner in CI) ---"
ARM64_DIR="$VERIFY_ROOT/arm64-from-ci"
mkdir -p "$ARM64_DIR"
gh_api() {
  if id ubuntu &>/dev/null && [ "$(id -un)" = "root" ]; then
    sudo -u ubuntu gh api "$@"
  else
    gh api "$@"
  fi
}
for artifact in alpine-linux-arm64 ubuntu-chiseled-linux-arm64; do
  artifact_id="$(gh_api "repos/$REPO/actions/runs/$CI_RUN_ID/artifacts" --jq ".artifacts[] | select(.name==\"binary-size-$artifact\") | .id")"
  test -n "$artifact_id" || fail "missing CI artifact binary-size-$artifact in run $CI_RUN_ID"
  gh_api "repos/$REPO/actions/artifacts/$artifact_id/zip" > "$ARM64_DIR/$artifact.zip"
  unzip -qo "$ARM64_DIR/$artifact.zip" -d "$ARM64_DIR/$artifact"
  json="$(find "$ARM64_DIR/$artifact" -name '*.json' | head -1)"
  validate_measurement_json "$json"
  cp "$json" "$ALL_SIZES_DIR/"
  pass "arm64 CI artifact $artifact"
done

test "$(find "$ALL_SIZES_DIR" -name '*.json' | wc -l)" -eq 4 || fail "expected 4 combined size JSON files"

echo "--- changelog extraction (release-github step) ---"
changes_file="$VERIFY_ROOT/changes.md"
input_file="src/Distroless.HealthChecks/CHANGELOG.md"
start_line=$(grep -nE '^## [0-9]+\.[0-9]+\.[0-9]' "$input_file" | head -n 1 | cut -d: -f1)
end_line=$(grep -nE '^## [0-9]+\.[0-9]+\.[0-9]' "$input_file" | sed -n '2p' | cut -d: -f1)
if [ -z "$end_line" ]; then
  sed -n "${start_line},\$p" "$input_file" > "$changes_file"
else
  sed -n "${start_line},$(($end_line-1))p" "$input_file" > "$changes_file"
fi
test -s "$changes_file" || fail "empty changelog"

echo "--- append-release: $TAG (live GitHub API) ---"
dotnet run build/release-binary-size.cs -- append-release \
  --sizes-dir "$ALL_SIZES_DIR" \
  --changes-file "$changes_file" \
  --repo "$REPO" \
  --tag "$TAG"
grep -q "### Binary size" "$changes_file" || fail "no binary size section"
grep -q "binary-sizes:" "$changes_file" || fail "no hidden marker"
test "$(grep -c '| ubuntu-chiseled |' "$changes_file")" -eq 2
test "$(grep -c '| alpine |' "$changes_file")" -eq 2
pass "append-release $TAG"

echo "--- append-release regression: distroless-dotnet-healthchecks@1.5.7 (CI failure scenario) ---"
changes_157="$VERIFY_ROOT/changes-157.md"
cp "$changes_file" "$changes_157"
dotnet run build/release-binary-size.cs -- append-release \
  --sizes-dir "$ALL_SIZES_DIR" \
  --changes-file "$changes_157" \
  --repo "$REPO" \
  --tag "distroless-dotnet-healthchecks@1.5.7"
pass "append-release @1.5.7 (no 404)"

echo "--- semver: prerelease compares to latest stable ---"
python3 - <<'PY'
import json, urllib.request
req = urllib.request.Request(
    "https://api.github.com/repos/alexaka1/distroless-dotnet-healthchecks/releases?per_page=100",
    headers={"User-Agent": "e2e-verify", "Accept": "application/vnd.github+json"},
)
releases = json.load(urllib.request.urlopen(req))
tags = [r["tag_name"] for r in releases if r["tag_name"].startswith("distroless-dotnet-healthchecks@")]
assert not any(t.endswith("@1.5.6") for t in tags), "unexpected 1.5.6 in releases"
assert any(t.endswith("@1.5.5") for t in tags), "need 1.5.5 for baseline"
print("  release list OK for semver baseline")
PY
pass "semver baseline against live release history"

echo ""
echo "=== ALL E2E CHECKS PASSED ==="
echo "amd64: full buildx+measure locally (provenance+sbom+dual outputs)"
echo "arm64: CI artifacts from run $CI_RUN_ID validated"
echo "append-release: @1.5.8 and @1.5.7 regression"
echo "Artifacts: $VERIFY_ROOT"
