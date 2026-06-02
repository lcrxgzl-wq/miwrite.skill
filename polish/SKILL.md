---
name: miwrite-polish
description: Local-only academic polishing and transcreation from local text.
status: active
---

# Local Polish

Use this skill when the user wants local text improved in structure, tone, clarity, or academic expression.

Local-only contract:
- do not call hosted MCP
- do not use API keys
- do not use hosted knowledge search

Inputs:
- local text
- mode if available: polish or transcreate
- target style if available

Workflow:
1. diagnose the local text's problems
2. preserve claims and epistemic qualifiers
3. improve structure, sentence logic, terminology, and tone
4. if transcreating, keep it as academic rewriting rather than literal translation

Output:
- revised local text
- if useful, a short note on what changed and what still needs human review
