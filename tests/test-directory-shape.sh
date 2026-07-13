#!/usr/bin/env bash
# Every expected top-level directory must exist.

set -uo pipefail
cd "$(dirname "$0")/.."

NAME="directory-shape"
FAIL=0

REQUIRED_DIRS=(
  knowledge research industries components layouts
  typography colors css html javascript animations
  accessibility performance seo design-systems
  prompts templates checklists validators self-review
  docs assets scripts tests examples
)

for d in "${REQUIRED_DIRS[@]}"; do
  if [[ ! -d "$d" ]]; then
    echo "FAIL: $NAME: missing directory $d"
    FAIL=1
  fi
done

if [[ $FAIL -eq 0 ]]; then
  echo "PASS: $NAME"
else
  exit 1
fi
