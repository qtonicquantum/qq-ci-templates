#!/usr/bin/env bash
# trade-secret-lint.sh — Block known internal terms from public artifacts
# The denylist is loaded from a separate file so this script does not match
# itself when scanning a repo.
set -euo pipefail
ROOT="${1:-.}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DENYLIST_FILE="${TRADE_SECRET_DENYLIST:-$SCRIPT_DIR/trade-secret-denylist.txt}"

if [ ! -f "$DENYLIST_FILE" ]; then
  echo "trade-secret-lint: denylist not found at $DENYLIST_FILE"
  exit 2
fi

violations=0
while IFS= read -r term; do
  [ -z "$term" ] && continue
  case "$term" in \#*) continue ;; esac
  # exclude the denylist file itself and this script
  matches=$(grep -rin --include="*.md" --include="*.py" --include="*.sh" --include="*.yml" \
      --exclude="trade-secret-lint.sh" --exclude="trade-secret-denylist.txt" \
      "$term" "$ROOT" 2>/dev/null || true)
  if [ -n "$matches" ]; then
    echo "$matches"
    echo "TRADE-SECRET-VIOLATION: $term"
    violations=$((violations+1))
  fi
done < "$DENYLIST_FILE"

[ "$violations" -eq 0 ] && { echo "trade-secret-lint: PASS"; exit 0; } || { echo "trade-secret-lint: $violations VIOLATION(S)"; exit 1; }
