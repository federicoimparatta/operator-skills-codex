#!/usr/bin/env bash
# Bootstrap: symlink every top-level skill in this repo into ~/.codex/skills.
# Idempotent. Backs up existing non-matching paths to *.backup-<timestamp>.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.codex/skills"
TS="$(date +%Y%m%d-%H%M%S)"

mkdir -p "$TARGET_DIR"

for skill_dir in "$REPO_DIR"/*; do
  [[ -d "$skill_dir" ]] || continue
  [[ -f "$skill_dir/SKILL.md" ]] || continue

  name="$(basename "$skill_dir")"
  dst="$TARGET_DIR/$name"

  if [[ -L "$dst" ]]; then
    if [[ "$(readlink "$dst")" == "$skill_dir" ]]; then
      echo "ok       $dst -> $skill_dir"
      continue
    fi
    rm "$dst"
  elif [[ -e "$dst" ]]; then
    mv "$dst" "$dst.backup-$TS"
    echo "backup   $dst -> $dst.backup-$TS"
  fi

  ln -s "$skill_dir" "$dst"
  echo "link     $dst -> $skill_dir"
done

echo
echo "Done. Restart Codex to load newly installed skills."
