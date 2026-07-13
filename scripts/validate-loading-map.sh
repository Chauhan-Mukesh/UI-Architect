#!/usr/bin/env bash
# Verify every file referenced in SKILL.md's Loading map exists on disk.
# Wildcards resolve to at least one matching file.

set -euo pipefail
cd "$(dirname "$0")/.."

if [[ ! -f SKILL.md ]]; then
  echo "error: SKILL.md not found" >&2
  exit 1
fi

FAIL=0

# Extract backtick-quoted paths from SKILL.md (crude but effective)
mapfile -t refs < <(
  grep -oE '`[a-z][A-Za-z0-9/_.<>-]*\.md`' SKILL.md \
  | sort -u \
  | tr -d '`'
)

for ref in "${refs[@]}"; do
  # Angle-bracket placeholders like <vertical>, <family>, <voice> are patterns not literals.
  # Replace them with '*' for globbing.
  glob=$(echo "$ref" | sed -E 's/<[a-z-]+>/\*/g')
  # Test with globbing
  shopt -s nullglob
  matches=( $glob )
  shopt -u nullglob
  if [[ ${#matches[@]} -eq 0 ]]; then
    echo "FAIL: SKILL.md references $ref but no file matches" >&2
    FAIL=1
  fi
done

if [[ "$FAIL" -eq 0 ]]; then
  echo "OK: loading map references resolve"
else
  exit 1
fi
