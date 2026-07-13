#!/usr/bin/env bash
# Every industry folder must contain the 8 canonical files.

set -euo pipefail
cd "$(dirname "$0")/.."

REQUIRED=(
  best-practices.md
  common-components.md
  conversion-goals.md
  examples.md
  layout-preferences.md
  mistakes.md
  recommended-colors.md
  typography.md
)

FAIL=0

if [[ ! -d industries ]]; then
  echo "error: industries/ directory missing" >&2
  exit 1
fi

for dir in industries/*/; do
  name=$(basename "$dir")
  for f in "${REQUIRED[@]}"; do
    if [[ ! -f "$dir/$f" ]]; then
      echo "FAIL: industries/$name is missing $f" >&2
      FAIL=1
    fi
  done
done

if [[ "$FAIL" -eq 0 ]]; then
  echo "OK: all industries have the 8 canonical files"
else
  exit 1
fi
