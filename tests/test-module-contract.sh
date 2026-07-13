#!/usr/bin/env bash
# Every knowledge file starts with # H1 heading and stays under LINE_CEILING lines.
# examples/ folder is exempt from the line ceiling.

set -uo pipefail
cd "$(dirname "$0")/.."

NAME="module-contract"
LINE_CEILING="${LINE_CEILING:-200}"
FAIL=0

DIRS=(
  knowledge research industries components layouts
  typography colors css html javascript animations
  accessibility performance seo design-systems
  prompts templates checklists validators self-review docs
)

for dir in "${DIRS[@]}"; do
  [[ -d "$dir" ]] || continue
  while IFS= read -r f; do
    first_line=$(head -1 "$f")
    if [[ ! "$first_line" =~ ^\#\  ]] && [[ "$first_line" != "---" ]]; then
      echo "FAIL: $NAME: $f first line is not H1 (or frontmatter)"
      FAIL=1
    fi

    lines=$(wc -l < "$f")
    if [[ "$lines" -gt "$LINE_CEILING" ]]; then
      echo "FAIL: $NAME: $f is $lines lines > ceiling $LINE_CEILING"
      FAIL=1
    fi
  done < <(find "$dir" -type f -name "*.md")
done

if [[ $FAIL -eq 0 ]]; then
  echo "PASS: $NAME"
else
  exit 1
fi
