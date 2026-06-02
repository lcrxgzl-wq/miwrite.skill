#!/bin/bash
# Install miwrite local skills for Claude Code

set -euo pipefail

REPO_URL="https://github.com/lcrxgzl-wq/miwrite.skill.git"
CACHE_REPO="${HOME}/.miwrite-skill"

has_local_skill_tree() {
  local candidate="$1"
  [ -n "$candidate" ] && [ -f "$candidate/AGENTS.md" ] && [ -d "$candidate/data-analysis" ] && [ -d "$candidate/lit-review" ]
}

resolve_skill_repo() {
  if has_local_skill_tree "${MIWRITE_SKILL_REPO:-}"; then
    echo "$MIWRITE_SKILL_REPO"
    return
  fi

  local script_source="${BASH_SOURCE[0]:-}"
  if [ -n "$script_source" ] && [ "$script_source" != "bash" ]; then
    local script_dir
    script_dir="$(cd "$(dirname "$script_source")" && pwd)"
    if has_local_skill_tree "$script_dir"; then
      echo "$script_dir"
      return
    fi
  fi

  if [ -d "$CACHE_REPO/.git" ]; then
    git -C "$CACHE_REPO" pull --ff-only >/dev/null 2>&1 || true
  else
    echo "Cloning miwrite.skill..."
    git clone "$REPO_URL" "$CACHE_REPO"
  fi

  echo "$CACHE_REPO"
}

SKILL_REPO="$(resolve_skill_repo)"
echo "Using skill source: $SKILL_REPO"

mkdir -p .claude/skills
mkdir -p .miwrite/skills

for skill in data-analysis lit-review close-reading organize review polish socratic design-stress report-mode; do
  ln -snf "$SKILL_REPO/$skill" ".claude/skills/$skill"
  ln -snf "$SKILL_REPO/$skill" ".miwrite/skills/$skill"
done

cp "$SKILL_REPO/AGENTS.md" .miwrite/AGENTS.md
if ! grep -q '.miwrite/AGENTS.md' CLAUDE.md 2>/dev/null; then
  echo "@./.miwrite/AGENTS.md" >> CLAUDE.md
  echo "Added miwrite import to CLAUDE.md"
else
  echo "miwrite already imported in CLAUDE.md"
fi

echo "Done. Local skills installed to .claude/skills/ without hosted MCP dependency."
