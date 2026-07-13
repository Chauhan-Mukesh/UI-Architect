# Tests

## Purpose
Structural integrity tests for the skill. They verify the repository is in a shape the SKILL loader can rely on. No implementation tests (this is a knowledge-base skill, not a code library).

## Contents
- `run-all.sh` — run every test in this directory; exits non-zero if any fails.
- `test-skill-frontmatter.sh` — SKILL.md starts with `---` and declares `name:` and `description:`.
- `test-directory-shape.sh` — every expected top-level directory exists.
- `test-industry-parity.sh` — every industry folder has the 8 canonical files.
- `test-loading-map.sh` — every file referenced in SKILL.md's Loading map exists.
- `test-module-contract.sh` — every knowledge file starts with an H1 and stays under the line ceiling.

## Usage

```bash
./tests/run-all.sh
```

Individual tests can be run directly. All tests exit 0 on pass, non-zero on fail.

## Test conventions
- Bash only, no runtime dependencies.
- Each test prints `PASS: <name>` or `FAIL: <name>: <reason>`.
- Tests must be idempotent and side-effect free (read-only).
