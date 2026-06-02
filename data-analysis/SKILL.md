---
name: miwrite-data
description: Local-only qualitative analysis for interviews, field notes, focus groups, and mixed text material.
status: active
---

# Local Data Analysis

Use this skill when the user has local qualitative material and wants coding, theme extraction, contradiction tracking, or an analysis draft.

Local-only contract:
- do not call hosted MCP
- do not use API keys
- do not use hosted knowledge search

Inputs:
- local material text or local files
- research topic if available
- desired analysis depth if available

Workflow:
1. inspect the local material and identify scope, source types, and obvious gaps
2. propose or derive a bounded coding frame from the material itself
3. extract candidate themes, counterexamples, and uncertainty
4. write a local analysis draft with explicit evidence anchors to the user's material

Output:
- coding summary
- theme summary
- counterexamples and tensions
- evidence-bound analysis
- missing-material warning if the local evidence is too thin
