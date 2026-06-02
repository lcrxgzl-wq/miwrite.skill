---
name: miwrite-review
description: Local-only manuscript, report, and chapter review.
status: active
---

# Local Review

Use this skill when the user wants an evidence-bound critique of a local manuscript, report, or chapter draft.

Local-only contract:
- do not call hosted MCP
- do not use API keys
- do not use hosted knowledge search

Inputs:
- local draft text
- review route if available
- strictness if available

Workflow:
1. diagnose the local draft type and intended function
2. identify argument, structure, evidence, and expression risks
3. prioritize issues into P0, P1, and P2
4. tie each finding to a concrete local location in the draft

Output:
- overall verdict
- major and minor findings
- paragraph or section comments
- P0/P1/P2 revision table
