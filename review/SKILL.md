---
name: miwrite-review
description: 稿件评阅 — 论文/报告的结构化评审
status: active
related_skills: [miwrite-read, miwrite-polish]
trigger_keywords: [评阅, 审稿, 评审, review, peer review]
---

# 稿件评阅

## 何时使用

用户有论文、报告或书稿需要结构化评审和修改建议。

## 输入

- **必需**：稿件文本（input_text）+ 评阅路线（review_route）
- **可选**：评阅模式、评阅视角、评阅强度、额外要求

## 评阅路线

| 路线 | 说明 | 适用场景 |
|------|------|---------|
| journal_academic | 学术论文评阅 | 论文、期刊稿、返修稿 |
| report_policy | 报告政策评阅 | 蓝皮书、政策建议、工作报告 |
| book_editorial | 书稿编辑评阅 | 书稿、章节、长报告 |

## 输出

- 总体裁决 + Major/Minor comments + P0/P1/P2 修订表
- 逐段批注（原文位置 → 问题 → 影响 → 修改建议）
- 模拟评阅意见信
- **5 维度 0-100 评分**（方法论/创新性/写作/证据/结构）+ 决策映射

## 评分决策映射

| 分数 | 决策 |
|------|------|
| ≥80 | 建议接收 |
| 65-79 | 小修 |
| 50-64 | 大修 |
| <50 | 建议拒稿 |

## 反谄媚

- 必须找出至少 3 个具体问题
- 每个问题必须有原文锚点
- 禁止空洞正面评价（如"写得很好"）

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
      "name": "run_review_pipeline",
      "arguments": {
        "input_text": "你的稿件文本...",
        "review_route": "journal_academic"
      }
    }
  }'
```
