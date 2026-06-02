# Local Skills Install Guide

This guide is only for the local skills package.

It does not install or configure Hosted MCP access.

## Before You Run Anything

Run the installer from the project where you want the skills to be available.

The installer can work in two modes:

- direct raw-script install from GitHub
- local checkout install if you already cloned `miwrite.skill`

## Quick Install

### Claude Code

```bash
curl -fsSL https://raw.githubusercontent.com/lcrxgzl-wq/miwrite.skill/main/install-claude.sh | bash
```

After install:

- restart Claude Code
- the local skills appear under `.claude/skills/`
- `.miwrite/skills/` and `.miwrite/AGENTS.md` are created for local routing clarity

### Codex / Cursor

```bash
curl -fsSL https://raw.githubusercontent.com/lcrxgzl-wq/miwrite.skill/main/install-codex.sh | bash
```

After install:

- the project gets a local `.miwrite/skills/` directory
- the project `AGENTS.md` is extended with local routing rules

## Install From A Local Checkout

If you already cloned this repository somewhere on disk:

```bash
cd /path/to/your/project
bash /path/to/miwrite.skill/install-claude.sh
```

or:

```bash
cd /path/to/your/project
bash /path/to/miwrite.skill/install-codex.sh
```

The installer detects the local checkout automatically and reuses it instead of cloning again.

## Installed Skill Set

- `data-analysis`
- `lit-review`
- `close-reading`
- `organize`
- `review`
- `polish`
- `socratic`
- `design-stress`
- `report-mode`

## Local-Only Contract

The installed skills:

- read local project files
- use local project context
- do not require online login
- do not require API keys
- do not call hosted MCP
- do not use hosted knowledge retrieval
- do not ship a hosted or bundled knowledge base

## Hosted MCP Is Separate

If you want:

- server-side model execution
- hosted `search_kb`
- hosted billing and balance
- the public API-key gateway

configure Hosted MCP separately at `https://miwrite.art/mcp`.
