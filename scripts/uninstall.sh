#!/usr/bin/env bash
# Remove an installed UI Architect skill instance.
# Usage:
#   ./scripts/uninstall.sh                # ~/.claude/skills/ui-architect
#   ./scripts/uninstall.sh --path DIR

set -euo pipefail

TARGET_DIR="${HOME}/.claude/skills"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --path) TARGET_DIR="$2"; shift 2 ;;
    -h|--help) sed -n '2,5p' "$0"; exit 0 ;;
    *) echo "Unknown option: $1" >&2; exit 2 ;;
  esac
done

DEST="${TARGET_DIR}/ui-architect"

if [[ ! -e "${DEST}" && ! -L "${DEST}" ]]; then
  echo "nothing to remove at ${DEST}"
  exit 0
fi

rm -rf "${DEST}"
echo "removed: ${DEST}"
