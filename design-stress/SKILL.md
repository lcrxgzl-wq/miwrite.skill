---
name: miwrite-design-stress
description: Local-only stress test for proposals, opening reports, grant drafts, and research designs.
status: active
---

# Local Research Design Stress Test

Use this skill when the user wants a proposal or research design challenged without relying on hosted services.

Local-only contract:
- do not call hosted MCP
- do not use API keys
- do not use hosted knowledge search

Inputs:
- local proposal or design text
- research topic if available
- study stage and type if available

Workflow:
1. identify the claimed question, contribution, data plan, and feasibility assumptions
2. test the design for fit, scope, evidence, resources, and execution risk
3. distinguish fatal flaws from fixable weaknesses
4. propose the smallest viable rescue path

Output:
- verdict
- fatal risks
- fixable risks
- committee-style questions
- short rescue plan
