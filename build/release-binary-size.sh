#!/usr/bin/env bash
set -euo pipefail

BINARY_SIZES_MARKER='binary-sizes:'

format_bytes() {
  local bytes="${1#-}"
  if (( bytes < 1024 )); then
    printf '%s B' "$bytes"
  elif (( bytes < 1024 * 1024 )); then
    awk -v b="$bytes" 'BEGIN { printf "%.2f KB", b / 1024 }'
  else
    awk -v b="$bytes" 'BEGIN { printf "%.2f MB", b / 1024 / 1024 }'
  fi
}

format_delta() {
  local current="$1"
  local previous="$2"

  if [[ -z "$previous" || "$previous" == "null" || "$previous" == "0" ]]; then
    echo "—"
    return
  fi

  local diff=$((current - previous))
  local sign=""
  if (( diff > 0 )); then
    sign="+"
  elif (( diff < 0 )); then
    sign="-"
  fi

  local abs_diff="${diff#-}"
  local pct
  pct=$(awk -v d="$diff" -v p="$previous" 'BEGIN {
    if (p == 0) {
      printf "0.0"
    } else {
      printf "%.1f", (d / p) * 100
    }
  }')

  if (( diff == 0 )); then
    echo "0 B (0.0%)"
    return
  fi

  printf '%s%s (%s%s%%)' "$sign" "$(format_bytes "$abs_diff")" "$sign" "$pct"
}

measure_from_digest() {
  local digest="$1"
  local variant="$2"
  local platform="$3"
  local output_dir="$4"

  mkdir -p "$output_dir/extract"
  local cid
  cid=$(docker create "$digest")
  trap 'docker rm -f "$cid" >/dev/null 2>&1 || true' RETURN

  docker cp "$cid:/Distroless.HealthChecks" "$output_dir/extract/Distroless.HealthChecks"
  docker cp "$cid:/." "$output_dir/extract/publish"

  local executable_size total_size
  executable_size=$(stat -c%s "$output_dir/extract/Distroless.HealthChecks")
  total_size=$(du -sb "$output_dir/extract/publish" | awk '{ print $1 }')

  local safe_platform="${platform//\//-}"
  jq -n \
    --arg variant "$variant" \
    --arg platform "$platform" \
    --argjson executable "$executable_size" \
    --argjson total "$total_size" \
    '{
      variant: $variant,
      platform: $platform,
      executable: $executable,
      total: $total
    }' >"$output_dir/${variant}-${safe_platform}.json"
}

merge_sizes() {
  local sizes_dir="$1"

  shopt -s nullglob
  local files=("$sizes_dir"/*.json)
  if ((${#files[@]} == 0)); then
    printf '{}'
    return
  fi

  jq -s '
    reduce .[] as $item (
      {};
      .[$item.variant][$item.platform] = {
        executable: $item.executable,
        total: $item.total
      }
    )
  ' "${files[@]}"
}

extract_previous_sizes() {
  local body="$1"
  local encoded
  encoded=$(printf '%s' "$body" | sed -n "s/.*<!-- ${BINARY_SIZES_MARKER}\(.*\) -->.*/\1/p" | head -n 1)
  if [[ -z "$encoded" ]]; then
    printf '{}'
    return
  fi

  printf '%s' "$encoded" | jq -c '.'
}

fetch_previous_release_body() {
  local repo="$1"
  local current_tag="$2"

  if [[ -z "${GH_TOKEN:-}" ]]; then
    printf ''
    return
  fi

  local previous_tag
  previous_tag=$(gh api "repos/${repo}/releases" --paginate \
    --jq ".[] | select(.tag_name | startswith(\"distroless-dotnet-healthchecks@\")) | .tag_name" \
    | grep -v "^${current_tag}$" \
    | head -n 1 || true)

  if [[ -z "$previous_tag" ]]; then
    printf ''
    return
  fi

  gh api "repos/${repo}/releases/tags/${previous_tag}" --jq '.body // ""'
}

append_release_section() {
  local sizes_dir="$1"
  local changes_file="$2"
  local repo="$3"
  local current_tag="$4"

  local current_sizes previous_body previous_sizes
  current_sizes=$(merge_sizes "$sizes_dir")
  previous_body=$(fetch_previous_release_body "$repo" "$current_tag")
  previous_sizes=$(extract_previous_sizes "$previous_body")

  {
    echo ""
    echo "### Binary size"
    echo ""
    echo "| Variant | Platform | Executable | Total | Δ Executable | Δ Total |"
    echo "| --- | --- | --- | --- | --- | --- |"

    printf '%s' "$current_sizes" | jq -r '
      to_entries[]
      | .key as $variant
      | .value
      | to_entries[]
      | [$variant, .key, (.value.executable | tostring), (.value.total | tostring)]
      | @tsv
    ' | sort | while IFS=$'\t' read -r variant platform executable total; do
      local prev_executable prev_total
      prev_executable=$(printf '%s' "$previous_sizes" | jq -r --arg v "$variant" --arg p "$platform" '.[$v][$p].executable // empty')
      prev_total=$(printf '%s' "$previous_sizes" | jq -r --arg v "$variant" --arg p "$platform" '.[$v][$p].total // empty')

      printf '| %s | %s | %s | %s | %s | %s |\n' \
        "$variant" \
        "$platform" \
        "$(format_bytes "$executable")" \
        "$(format_bytes "$total")" \
        "$(format_delta "$executable" "$prev_executable")" \
        "$(format_delta "$total" "$prev_total")"
    done

    echo ""
    echo "<!-- ${BINARY_SIZES_MARKER}$(printf '%s' "$current_sizes" | jq -c '.') -->"
  } >>"$changes_file"
}

usage() {
  cat <<'EOF'
Usage:
  release-binary-size.sh measure --digest <digest> --variant <variant> --platform <platform> --output <dir>
  release-binary-size.sh append-release --sizes-dir <dir> --changes-file <file> --repo <owner/repo> --tag <tag>
EOF
}

main() {
  local command="${1:-}"
  shift || true

  case "$command" in
    measure)
      local digest='' variant='' platform='' output=''
      while [[ $# -gt 0 ]]; do
        case "$1" in
          --digest) digest="$2"; shift 2 ;;
          --variant) variant="$2"; shift 2 ;;
          --platform) platform="$2"; shift 2 ;;
          --output) output="$2"; shift 2 ;;
          *) echo "Unknown argument: $1" >&2; usage; exit 1 ;;
        esac
      done

      if [[ -z "$digest" || -z "$variant" || -z "$platform" || -z "$output" ]]; then
        echo "measure requires --digest, --variant, --platform, and --output" >&2
        exit 1
      fi

      measure_from_digest "$digest" "$variant" "$platform" "$output"
      ;;
    append-release)
      local sizes_dir='' changes_file='' repo='' tag=''
      while [[ $# -gt 0 ]]; do
        case "$1" in
          --sizes-dir) sizes_dir="$2"; shift 2 ;;
          --changes-file) changes_file="$2"; shift 2 ;;
          --repo) repo="$2"; shift 2 ;;
          --tag) tag="$2"; shift 2 ;;
          *) echo "Unknown argument: $1" >&2; usage; exit 1 ;;
        esac
      done

      if [[ -z "$sizes_dir" || -z "$changes_file" || -z "$repo" || -z "$tag" ]]; then
        echo "append-release requires --sizes-dir, --changes-file, --repo, and --tag" >&2
        exit 1
      fi

      append_release_section "$sizes_dir" "$changes_file" "$repo" "$tag"
      ;;
    *)
      usage
      exit 1
      ;;
  esac
}

main "$@"
