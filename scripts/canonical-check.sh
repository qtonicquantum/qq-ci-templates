#!/usr/bin/env bash
# canonical-check.sh — Confirms website canonical strings appear in README
set -euo pipefail
ROOT="${1:-.}"
README="$ROOT/README.md"
[ -f "$README" ] || { echo "no README"; exit 1; }
fails=0
phrases=(
  "leading quantum risk and vulnerability intelligence tools and services"
)
for p in "${phrases[@]}"; do
  if ! grep -qF "$p" "$README"; then
    echo "MISSING canonical phrase: $p"; fails=$((fails+1))
  fi
done
[ "$fails" -eq 0 ] && { echo "canonical-check: PASS"; exit 0; } || exit 1
