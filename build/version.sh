#!/usr/bin/env bash

set -e
pnpm run changeset:version
# Define the source folder
SRC_DIR="./src"

# Check if the src folder exists
if [ ! -d "$SRC_DIR" ]; then
  echo "Error: Directory $SRC_DIR does not exist."
  exit 1
fi

# Loop through each package folder in the src directory
for PACKAGE_DIR in "$SRC_DIR"/*; do
  # Ensure it's a directory
  if [ -d "$PACKAGE_DIR" ]; then
    # Find the package.json file
    PACKAGE_JSON="$PACKAGE_DIR/package.json"

    # Find the .csproj file in the directory
    CSPROJ_FILE=$(find "$PACKAGE_DIR" -maxdepth 1 -name "*.csproj" -print -quit)

    # Check if both files exist
    if [ -f "$PACKAGE_JSON" ] && [ -f "$CSPROJ_FILE" ]; then
      VERSION=$(jq -r '.version' "$PACKAGE_JSON")
      sed -i "s#<Version>.*</Version>#<Version>$VERSION</Version>#" "$CSPROJ_FILE"
    else
      echo "Warning: Missing files in $PACKAGE_DIR (package.json or .csproj not found)."
    fi
  fi
done
