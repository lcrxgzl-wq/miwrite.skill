---
name: miwrite-report-mode
description: Local-only conversion of research material into briefs, memos, and decision-facing reports.
status: active
---

# Local Report Mode

Use this skill when the user wants local material turned into a decision-facing brief, memo, or structured report.

Local-only contract:
- do not call hosted MCP
- do not use API keys
- do not use hosted knowledge search

Inputs:
- local source material
- report mode if available
- audience if available
- topic if available

Workflow:
1. identify the decision audience and the local evidence base
2. separate evidence, interpretation, and recommendation
3. remove academic-only padding that does not help the target reader
4. keep all recommendations bounded by the supplied local material

Output:
- brief, memo, or report draft
- explicit evidence/recommendation separation
- risk and uncertainty notes when the material is thin
