#!/usr/bin/env bash
# Every backticked *.md path in SKILL.md must resolve to at least one file.
# <placeholders> are replaced with '*' before globbing.

set -uo pipefail
cd "$(dirname "$0")/.."

NAME="loading-map"
FAIL=0

mapfile -t refs < <(
  grep -oE '`[a-z][A-Za-z0-9/_.<>*-]*\.md`' SKILL.md \
  | sort -u \
  | tr -d '`'
)

for ref in "${refs[@]}"; do
  glob=$(echo "$ref" | sed -E 's/<[a-z-]+>/\*/g')
  shopt -s nullglob
  matches=( $glob )
  shopt -u nullglob
  if [[ ${#matches[@]} -eq 0 ]]; then
    echo "FAIL: $NAME: SKILL.md references $ref but no file matches"
    FAIL=1
  fi
done

if [[ $FAIL -eq 0 ]]; then
  echo "PASS: $NAME"
else
  exit 1
fi
