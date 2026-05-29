#!/bin/bash
# Install miwrite.skill for Claude Code
# Run this in your project directory

set -e

SKILL_REPO="${HOME}/.miwrite-skill"

if [ ! -d "$SKILL_REPO" ]; then
  echo "Cloning miwrite.skill..."
  git clone https://github.com/lcrxgzl-wq/miwrite.skill.git "$SKILL_REPO"
fi

# Link skills to .claude/skills/ (Claude Code discovery)
mkdir -p .claude/skills
for skill in lit-review close-reading polish review; do
  ln -snf "$SKILL_REPO/src/skills/$skill" ".claude/skills/$skill"
done

# Add AGENTS.md import to CLAUDE.md
if ! grep -q 'miwrite-skill' CLAUDE.md 2>/dev/null; then
  echo "@${SKILL_REPO}/AGENTS.md" >> CLAUDE.md
  echo "Added miwrite import to CLAUDE.md"
else
  echo "miwrite already imported in CLAUDE.md"
fi

echo "Done. Skills installed to .claude/skills/"
