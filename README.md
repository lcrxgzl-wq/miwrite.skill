# miwrite Local Skills

`miwrite.skill` is the local-only skills package for Chinese social-science writing and research work.

It is built for Claude Code, Codex, Cursor, and similar local agents that can read local skill files.

## Boundary

- No login required
- No `MIWRITE_API_KEY`
- No hosted MCP dependency
- No hosted knowledge-base dependency
- No hosted balance or paid-model usage
- Works only from local files, local notes, local project context, and direct user input

If you want server-side model execution, hosted knowledge search, or API-key-based gateway access, use the separate Hosted MCP product at `https://miwrite.art/mcp`.

## Mode Split

| Surface | Login / API key | Hosted model | Hosted knowledge | Cost | Main use |
|---|---|---|---|---|---|
| Local Skills (`miwrite.skill`) | No | No | No | Free | Local drafting, critique, organization, and research planning |
| Hosted MCP helper tools | Yes | No | `search_kb` uses hosted search | Free with platform limits | Fetch workflow packs or use hosted helper calls |
| Hosted MCP paid pipelines | Yes | Yes | May use hosted resources | Paid | Server-side pipeline execution through `tools/call` |

## Included Skills

| Skill ID | Typical command | Use case |
|---|---|---|
| `data-analysis` | `/miwrite-data` | Local qualitative coding and analysis |
| `lit-review` | `/miwrite-lit` | Local literature review synthesis |
| `close-reading` | `/miwrite-read` | Local deep reading of a paper, report, or chapter |
| `organize` | `/miwrite-organize` | Local material ledger and main-thread extraction |
| `review` | `/miwrite-review` | Local manuscript or report critique |
| `polish` | `/miwrite-polish` | Local academic polishing or transcreation |
| `socratic` | `/miwrite-ask` | Local guided research dialogue |
| `design-stress` | `/miwrite-design-stress` | Local red-team review of a proposal or research design |
| `report-mode` | `/miwrite-report-mode` | Local brief, memo, and decision-facing report drafting |

## Quick Install

Run the installer from the project where you want the skills to be available.

### Claude Code

```bash
curl -fsSL https://raw.githubusercontent.com/lcrxgzl-wq/miwrite.skill/main/install-claude.sh | bash
```

This creates local links under `.claude/skills/` and a local mirror under `.miwrite/skills/`.

### Codex / Cursor

```bash
curl -fsSL https://raw.githubusercontent.com/lcrxgzl-wq/miwrite.skill/main/install-codex.sh | bash
```

This creates `.miwrite/skills/` and appends local routing rules to the project `AGENTS.md`.

More installation detail: [install.md](./install.md)

## What Local Skills Can Do

- route a request to the correct local workflow
- inspect local files in the current project
- produce structured local drafts, critique, outlines, and revision plans
- stay fully offline from the miwrite hosted runtime

## What Local Skills Cannot Do

- call `https://miwrite.art/api/mcp/remote/rpc`
- use `MIWRITE_API_KEY`
- use hosted knowledge search
- spend hosted balance
- rely on a bundled hosted knowledge base

## When To Use Hosted MCP Instead

Use Hosted MCP only when you explicitly want:

- server-side paid model execution
- hosted `search_kb`
- API-key-based remote tool access
- the public MCP gateway documented at `https://miwrite.art/mcp/docs`

## License

MIT
