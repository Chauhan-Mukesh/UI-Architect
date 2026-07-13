#!/usr/bin/env bash
# Every industry has the 8 canonical files with real content (>200 bytes).

set -uo pipefail
cd "$(dirname "$0")/.."

NAME="industry-parity"
FAIL=0

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

for dir in industries/*/; do
  vertical=$(basename "$dir")
  for f in "${REQUIRED[@]}"; do
    if [[ ! -f "$dir$f" ]]; then
      echo "FAIL: $NAME: industries/$vertical missing $f"
      FAIL=1
      continue
    fi
    size=$(wc -c < "$dir$f")
    if [[ "$size" -lt 200 ]]; then
      echo "FAIL: $NAME: industries/$vertical/$f is $size bytes — looks like a stub"
      FAIL=1
    fi
  done
done

if [[ $FAIL -eq 0 ]]; then
  echo "PASS: $NAME"
else
  exit 1
fi
