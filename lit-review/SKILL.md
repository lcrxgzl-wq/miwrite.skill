---
name: miwrite-lit
description: 文献综述合成 — 多篇文献的结构化综述
status: active
related_skills: [miwrite-read, miwrite-data]
trigger_keywords: [文献综述, 综述, literature review, synthesis, meta-analysis]
---

# 文献综述

## 何时使用

用户有多篇文献的笔记、摘录或全文，需要合成一篇结构化综述。

## 输入

- **必需**：文献文本（input_text）+ 综述主题（topic）
- **可选**：输出格式、额外要求、模型档位

## 输出

- 结构化综述报告（证据表、缺口分析、研究启发）
- 引用验证状态标注（[已验证]/[未找到]/[未验证]）
- [p.N] 页码锚点（PDF 来源）

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
      "name": "run_lit_review_pipeline",
      "arguments": {
        "input_text": "你的文献文本...",
        "topic": "综述主题"
      }
    }
  }'
```

## 引用验证

输出中的每条引用会自动通过 Semantic Scholar API 验证。验证报告附在综述末尾。
