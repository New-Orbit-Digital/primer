#!/usr/bin/env bash
# Fails a pull request when skills/primer/SKILL.md changes without a raised
# version line and a matching newest entry in CHANGELOG.md.
# Usage: changelog-check.sh <base-ref>
set -euo pipefail
base="$1"
skill=skills/primer/SKILL.md
ver() { grep -m1 -oE '^Version: [0-9]+\.[0-9]+\.[0-9]+' | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' || true; }

changed=$(git diff --name-only "$base"...HEAD)
if ! grep -qx "$skill" <<<"$changed"; then
  echo "SKILL.md unchanged; nothing to check."
  exit 0
fi
grep -qx 'CHANGELOG.md' <<<"$changed" || { echo "::error::SKILL.md changed but CHANGELOG.md did not."; exit 1; }

skill_v=$(ver < "$skill")
log_v=$(grep -m1 -oE '^## [0-9]+\.[0-9]+\.[0-9]+' CHANGELOG.md | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' || true)
[ -n "$skill_v" ] || { echo "::error::SKILL.md has no 'Version: X.Y.Z' line."; exit 1; }
[ "$skill_v" = "$log_v" ] || { echo "::error::SKILL.md is version $skill_v but the newest CHANGELOG entry is ${log_v:-missing}."; exit 1; }

base_v=$(git show "$base:$skill" 2>/dev/null | ver || true)
if [ -n "$base_v" ]; then
  newest=$(printf '%s\n%s\n' "$base_v" "$skill_v" | sort -V | tail -n1)
  if [ "$skill_v" = "$base_v" ] || [ "$newest" != "$skill_v" ]; then
    echo "::error::SKILL.md changed but its version ($skill_v) was not raised above $base_v."
    exit 1
  fi
fi
echo "OK: SKILL.md $skill_v matches the newest CHANGELOG entry."
