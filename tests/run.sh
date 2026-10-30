#!/usr/bin/env bash
# Auto-generated test harness — run after cloning to verify the build.
set -uo pipefail
FAIL=0

echo "-- syntax/build check --"
if go vet ./... && go build ./...; then echo "  ok"; else echo "  FAIL"; FAIL=1; fi

echo "-- functional check --"
OUT="$(go run main.go 30 2>&1)"
if echo "$OUT" | grep -qF -- 'Found 10 primes up to 30:'; then
  echo "  ok   - contains: Found 10 primes up to 30:"
else
  echo "  FAIL - expected to contain: Found 10 primes up to 30:"
  echo "  got: $OUT"
  FAIL=1
fi

if [ "$FAIL" = "1" ]; then echo; echo "FAILED"; exit 1; fi
echo; echo "All tests passed."
