#!/usr/bin/env bash
# Install UI Architect as a Claude Code skill.
# Usage:
#   ./scripts/install.sh                  # symlink to ~/.claude/skills/ui-architect
#   ./scripts/install.sh --copy           # copy files instead
#   ./scripts/install.sh --path DIR       # install to a custom skills directory

set -euo pipefail

MODE="symlink"
TARGET_DIR="${HOME}/.claude/skills"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --copy) MODE="copy"; shift ;;
    --path) TARGET_DIR="$2"; shift 2 ;;
    -h|--help)
      sed -n '2,7p' "$0"
      exit 0
      ;;
    *) echo "Unknown option: $1" >&2; exit 2 ;;
  esac
done

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILL_NAME="ui-architect"
DEST="${TARGET_DIR}/${SKILL_NAME}"

if [[ ! -f "${REPO_ROOT}/SKILL.md" ]]; then
  echo "error: SKILL.md not found at ${REPO_ROOT}" >&2
  exit 1
fi

# Sanity: SKILL.md must have frontmatter
if ! head -1 "${REPO_ROOT}/SKILL.md" | grep -q '^---$'; then
  echo "error: SKILL.md is missing YAML frontmatter (first line should be '---')" >&2
  exit 1
fi

mkdir -p "${TARGET_DIR}"

if [[ -e "${DEST}" || -L "${DEST}" ]]; then
  echo "note: ${DEST} already exists; removing previous installation"
  rm -rf "${DEST}"
fi

case "${MODE}" in
  symlink)
    ln -s "${REPO_ROOT}" "${DEST}"
    echo "installed (symlink): ${DEST} -> ${REPO_ROOT}"
    ;;
  copy)
    mkdir -p "${DEST}"
    # Copy everything except .git and scratch files
    (cd "${REPO_ROOT}" && tar --exclude='.git' --exclude='node_modules' -cf - .) | (cd "${DEST}" && tar -xf -)
    echo "installed (copy): ${DEST}"
    ;;
esac

echo ""
echo "Installed as skill: ${SKILL_NAME}"
echo "Verify inside Claude Code by asking: \"list skills\" or invoke a UI task."
echo "To uninstall: ./scripts/uninstall.sh --path ${TARGET_DIR}"
