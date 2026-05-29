#!/bin/bash
# Install miwrite.skill for Codex CLI or Cursor
# Run this in your project directory

set -e

SKILL_REPO="${HOME}/.miwrite-skill"

if [ ! -d "$SKILL_REPO" ]; then
  echo "Cloning miwrite.skill..."
  git clone https://github.com/lcrxgzl-wq/miwrite.skill.git "$SKILL_REPO"
fi

# Copy AGENTS.md to project root (flat, self-contained, no imports)
if [ -f AGENTS.md ]; then
  echo "Existing AGENTS.md found. Backing up to AGENTS.md.bak"
  cp AGENTS.md AGENTS.md.bak
  echo "" >> AGENTS.md
  echo "# --- miwrite academic writing skills ---" >> AGENTS.md
  cat "$SKILL_REPO/AGENTS.md" >> AGENTS.md
  echo "Appended miwrite rules to AGENTS.md"
else
  cp "$SKILL_REPO/AGENTS.md" ./AGENTS.md
  echo "Copied AGENTS.md to project root"
fi

# Link src/skills/ for AGENTS.md path resolution
if [ -d src/skills ]; then
  echo "src/skills/ already exists, skipping link"
else
  ln -snf "$SKILL_REPO/src/skills" ./src/skills
  echo "Linked src/skills/"
fi

echo "Done. Codex/Cursor will read AGENTS.md from project root."
