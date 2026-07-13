#!/usr/bin/env bash
# Validate every module conforms to the contract:
#   - Starts with an H1 heading
#   - Under LINE_CEILING lines (examples excluded)
#   - Contains at least one section heading beyond the H1
# Exits non-zero on failure.

set -euo pipefail
cd "$(dirname "$0")/.."

LINE_CEILING="${LINE_CEILING:-200}"
FAIL=0

# Directories that carry knowledge modules and follow the contract
DIRS=(
  knowledge research industries components layouts
  typography colors css html javascript animations
  accessibility performance seo design-systems
  prompts templates checklists validators self-review docs assets
)

for dir in "${DIRS[@]}"; do
  while IFS= read -r f; do
    # Must start with # heading
    first_line=$(head -1 "$f")
    if [[ ! "$first_line" =~ ^\#\  ]] && [[ "$first_line" != "---" ]]; then
      echo "FAIL: $f — first line is not an H1 heading (or YAML frontmatter)" >&2
      FAIL=1
    fi

    # Line ceiling (examples/ are exempt)
    lines=$(wc -l < "$f")
    if [[ "$dir" != "examples" && "$lines" -gt "$LINE_CEILING" ]]; then
      echo "FAIL: $f — $lines lines exceeds ceiling of $LINE_CEILING" >&2
      FAIL=1
    fi

    # Requires at least one section heading beyond the H1
    section_count=$(grep -c '^## ' "$f" 2>/dev/null || true)
    if [[ "$section_count" -lt 1 && "$lines" -gt 5 ]]; then
      echo "FAIL: $f — no ## sections in a $lines-line file" >&2
      FAIL=1
    fi
  done < <(find "$dir" -type f -name "*.md" 2>/dev/null)
done

if [[ "$FAIL" -eq 0 ]]; then
  echo "OK: structure valid"
else
  exit 1
fi
