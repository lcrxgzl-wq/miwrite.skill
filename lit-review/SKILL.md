---
name: miwrite-lit
description: Local-only literature synthesis from user-provided notes, excerpts, and local files.
status: active
---

# Local Literature Review

Use this skill when the user wants a structured synthesis of local literature material.

Local-only contract:
- do not call hosted MCP
- do not use API keys
- do not use hosted knowledge search
- do not invent references that are not in the local material

Inputs:
- local literature notes, excerpts, or PDFs converted to text
- review topic if available
- preferred organizing logic if available

Workflow:
1. identify the literature set actually present in local material
2. extract claims, methods, objects, evidence, and limits from those sources
3. organize the synthesis by question, concept, mechanism, method, or debate
4. mark unsupported gaps instead of inventing external literature

Output:
- structured review draft
- comparison matrix across the local literature set
- concrete gap statement bounded by the supplied material
