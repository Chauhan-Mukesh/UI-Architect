# Scripts

## Purpose
Small shell utilities for installing the skill and verifying repository integrity. All scripts are POSIX bash, no dependencies beyond coreutils.

## Contents
- `install.sh` — install this repo as a Claude Code skill (symlink or copy).
- `uninstall.sh` — remove an installed instance.
- `validate-structure.sh` — check every module conforms to the contract (size ceiling, required headings).
- `validate-loading-map.sh` — check every file referenced in `SKILL.md`'s loading map exists.
- `validate-industries.sh` — check every industry has the 8 canonical files.

## Usage
Run scripts from the repo root:

```bash
./scripts/install.sh           # installs as symlink to ~/.claude/skills/ui-architect
./scripts/install.sh --copy    # copies files instead of symlinking
./scripts/install.sh --path /custom/skills/dir
./scripts/validate-structure.sh
./scripts/validate-loading-map.sh
./scripts/validate-industries.sh
```

All validators exit 0 on success, non-zero on failure. Suitable for CI.
