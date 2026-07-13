#!/usr/bin/env bash
# Run every test in this directory. Exit non-zero if any fails.

set -uo pipefail
cd "$(dirname "$0")"

PASS=0
FAIL=0
FAILED_TESTS=()

for t in test-*.sh; do
  [[ -e "$t" ]] || continue
  if bash "$t"; then
    PASS=$((PASS + 1))
  else
    FAIL=$((FAIL + 1))
    FAILED_TESTS+=("$t")
  fi
done

echo ""
echo "----------------------------------------"
echo "Results: $PASS passed, $FAIL failed"
if [[ $FAIL -gt 0 ]]; then
  printf 'Failed: %s\n' "${FAILED_TESTS[@]}"
  exit 1
fi
