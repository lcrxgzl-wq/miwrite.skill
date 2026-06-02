# Local Skill Router Note

This legacy `skills/src/` subtree no longer defines the active product surface.

Current source of truth:
- local-only skills live at the repository root (`data-analysis/`, `lit-review/`, and the other skill folders)
- local routing rules live in `AGENTS.md`
- installed local skill links resolve to `.miwrite/skills/` and `.claude/skills/`

Hard boundary:
- no hosted MCP dependency
- no hosted knowledge base
- no `MIWRITE_API_KEY`
