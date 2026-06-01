---
name: miwrite-read
description: 文本精读 — 论文/报告的深度阅读与分析
status: active
related_skills: [miwrite-lit, miwrite-review]
trigger_keywords: [精读, 深度阅读, 论文阅读, close reading, deep reading]
---

# 文本精读

## 何时使用

用户有一篇论文或报告需要深度理解、方法迁移或批判性分析。

## 输入

- **必需**：原文文本（input_text）+ 精读路线（reading_route）
- **可选**：精读深度（fast/standard/deep）、输出格式、额外要求

## 精读路线

| 路线 | 说明 | 适用场景 |
|------|------|---------|
| reader_map | 阅读地图 — 结构化理解文本 | 想读懂一篇论文 |
| transfer_lab | 研究迁移 — 借鉴方法/结构到自己的研究 | 想借鉴方法论 |
| critique_dialogue | 批判对话 — 批判性分析与反论 | 朋找问题和局限 |

## 输出

- 精读卡片（定位卡、结构卡、理论卡、迁移卡、质疑卡）
- 证据锚点 [p.N]
- 轻量质检（是否覆盖输入、是否保留证据边界）

## 调用方式

```bash
curl -X POST https://miwrite.art/api/mcp/remote/rpc \
  -H "Authorization: Bearer $MIWRITE_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "jsonrpc": "2.0",
    "id": 1,
    "method": "tools/call",
    "params": {
      "name": "run_close_reading_pipeline",
      "arguments": {
        "input_text": "你的原文文本...",
        "reading_route": "reader_map"
      }
    }
  }'
```
