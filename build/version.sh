#!/usr/bin/env bash

set -euo pipefail

# SNAPSHOT can be:
# - unset/empty => no snapshot
# - "true"/"1"/"yes" => --snapshot
# - any other non-empty value => --snapshot <value>
SNAPSHOT_ARG=()

if [ -n "${SNAPSHOT:-}" ]; then
  case "${SNAPSHOT}" in
    1|true|TRUE|yes|YES)
      SNAPSHOT_ARG+=(--snapshot)
      ;;
    *)
      SNAPSHOT_ARG+=(--snapshot "${SNAPSHOT}")
      ;;
  esac
fi

if [ ${#SNAPSHOT_ARG[@]} -eq 0 ]; then
  pnpm run changeset:version
else
  pnpm run changeset:version "${SNAPSHOT_ARG[@]}"
fi

# Define the source folder
SRC_DIR="./src"

# Check if the src folder exists
if [ ! -d "$SRC_DIR" ]; then
  echo "Error: Directory $SRC_DIR does not exist."
  exit 1
fi

command -v jq >/dev/null 2>&1 || {
  echo "Error: jq is required. Install with: brew install jq"
  exit 1
}

if sed --version >/dev/null 2>&1; then
  # GNU sed
  SED_INPLACE=(sed -i)
else
  # BSD sed (macOS)
  SED_INPLACE=(sed -i '')
fi

# Loop through each package folder in the src directory
for PACKAGE_DIR in "$SRC_DIR"/*; do
  # Ensure it's a directory
  if [ -d "$PACKAGE_DIR" ]; then
    # Find the package.json file
    PACKAGE_JSON="$PACKAGE_DIR/package.json"

    # Find the Version.props file in the directory
    VERSION_FILE=$(find "$PACKAGE_DIR" -maxdepth 1 -type f -name "Version.props" | head -n 1)

    # Check if both files exist
    if [ -f "$PACKAGE_JSON" ] && [ -f "$VERSION_FILE" ]; then
      VERSION=$(jq -r '.version // empty' "$PACKAGE_JSON")
      if [ -z "$VERSION" ]; then
        echo "Warning: No version in $PACKAGE_JSON; skipping $VERSION_FILE"
        continue
      fi
      "${SED_INPLACE[@]}" "s#<Version>[^<]*</Version>#<Version>$VERSION</Version>#" "$VERSION_FILE"
    else
      echo "Warning: Missing files in $PACKAGE_DIR (package.json or Version.props not found)."
    fi
  fi
done
