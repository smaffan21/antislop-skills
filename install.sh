#!/usr/bin/env sh
# Installs the anti-slop naming skills (MIT). Read it before you run it; it only downloads three text files.
#   Claude Code:  curl -fsSL https://raw.githubusercontent.com/smaffan21/antislop-skills/main/install.sh | sh
#   Codex:        curl -fsSL https://raw.githubusercontent.com/smaffan21/antislop-skills/main/install.sh | sh -s -- --codex
#   Any folder:   curl -fsSL https://raw.githubusercontent.com/smaffan21/antislop-skills/main/install.sh | sh -s -- --dir=.claude/skills
set -eu
BASE="https://raw.githubusercontent.com/smaffan21/antislop-skills/main/skills"
DEST="$HOME/.claude/skills"
for arg in "$@"; do
  case "$arg" in
    --codex) DEST="$HOME/.agents/skills" ;;
    --dir=*) DEST="${arg#--dir=}" ;;
  esac
done
for f in anti-slop-namer/SKILL.md anti-slop-namer/slop-list.md anti-slop-check/SKILL.md; do
  mkdir -p "$DEST/$(dirname "$f")"
  curl -fsSL "$BASE/$f" -o "$DEST/$f"
done
echo "Installed anti-slop-namer and anti-slop-check into $DEST"
