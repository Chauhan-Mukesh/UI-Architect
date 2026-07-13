#!/usr/bin/env bash
# SKILL.md must start with YAML frontmatter that declares name and description.

set -uo pipefail
cd "$(dirname "$0")/.."

NAME="skill-frontmatter"

if [[ ! -f SKILL.md ]]; then
  echo "FAIL: $NAME: SKILL.md not found"
  exit 1
fi

if [[ "$(head -1 SKILL.md)" != "---" ]]; then
  echo "FAIL: $NAME: SKILL.md first line is not '---'"
  exit 1
fi

# Extract frontmatter block
fm=$(awk '/^---$/{c++; next} c==1 { print }' SKILL.md)

if ! echo "$fm" | grep -qE '^name:[[:space:]]*[A-Za-z0-9._-]+'; then
  echo "FAIL: $NAME: frontmatter missing 'name:' key"
  exit 1
fi

if ! echo "$fm" | grep -qE '^description:'; then
  echo "FAIL: $NAME: frontmatter missing 'description:' key"
  exit 1
fi

echo "PASS: $NAME"
