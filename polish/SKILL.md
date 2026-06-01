---
name: miwrite-polish
description: 学术润色/中译英转写
status: active
related_skills: [miwrite-review, miwrite-read]
trigger_keywords: [润色, 转写, 翻译, polish, transcreate, 英文转写]
---

# 润色转写

## 何时使用

用户有中文学术文本需要润色，或需要将中文论文转写为英文 SSCI/SCI 论文。

## 输入

- **必需**：原文文本（input_text）+ 处理模式（mode）
- **可选**：目标风格、术语映射、额外要求

## 处理模式

| 模式 | 说明 | 适用场景 |
|------|------|---------|
| polish | 中文学术写作多级润色 | 期刊论文/硕博论文/学术报告 |
| transcreate | 中→英 SSCI/SCI 学术转写 | 英文期刊投稿 |

## 输出

- 润色/转写后的文本
- 术语一致性检查
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
      "name": "run_polish_pipeline",
      "arguments": {
        "input_text": "你的文本...",
        "mode": "polish"
      }
    }
  }'
```
