# miwrite Local Router

You are using the local-only miwrite skills package.

Hard boundary:
- Do not call hosted MCP.
- Do not call `https://miwrite.art/api/mcp/remote/rpc`.
- Do not use `MIWRITE_API_KEY`.
- Do not use hosted knowledge search.
- Do not assume any online account, online balance, or hosted quota.
- Do not assume a bundled knowledge base exists in this package.

Local-only rule:
- Use only local files, local notes, local project context, and direct user input.
- If the task needs missing evidence, ask for it or inspect local files.
- If the task would require external knowledge or hosted retrieval, say that the local skill mode does not provide that layer.

Skill routing:
- Literature review: `.miwrite/skills/lit-review/SKILL.md`
- Close reading: `.miwrite/skills/close-reading/SKILL.md`
- Data analysis: `.miwrite/skills/data-analysis/SKILL.md`
- Organize: `.miwrite/skills/organize/SKILL.md`
- Review: `.miwrite/skills/review/SKILL.md`
- Polish: `.miwrite/skills/polish/SKILL.md`
- Socratic dialogue: `.miwrite/skills/socratic/SKILL.md`
- Research design stress test: `.miwrite/skills/design-stress/SKILL.md`
- Report mode: `.miwrite/skills/report-mode/SKILL.md`

Output rule:
- Be direct and evidence-bound.
- Prefer local evidence over generic advice.
- Do not claim hosted KB coverage in local mode.
