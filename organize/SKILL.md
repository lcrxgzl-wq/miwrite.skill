---
name: miwrite-organize
description: 资料主线整理 — 混合材料的结构化整理
status: active
related_skills: [miwrite-data, miwrite-read]
trigger_keywords: [资料整理, 主线, 材料整理, organize, material thread]
---

# 资料主线整理

## 何时使用

用户有访谈、田野笔记、政策报告、会议纪要等混合材料，需要整理成结构化台账和主线。

## 输入

- **必需**：原始材料（input_text）+ 主题（topic）+ 整理目标（organize_mode）
- **可选**：锚定模式、输出格式、额外要求

## 整理目标

| 目标 | 说明 |
|------|------|
| 主线整理+初步分析 | 抽出主线 + 证据卡 + 缺口 |
| 材料台账 | 按文件/时间/地点分层建台账 |
| 证据卡整理 | 提取可复用的证据片段 |
| 写作准备 | 为论文写作整理素材 |
| 项目汇报整理 | 为项目汇报整理材料 |

## 输出

- 材料台账 + 主线 + 证据卡 + 缺口 + 下一步建议

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
      "name": "run_organize_pipeline",
      "arguments": {
        "input_text": "你的材料文本...",
        "topic": "主题",
        "organize_mode": "主线整理+初步分析"
      }
    }
  }'
```
