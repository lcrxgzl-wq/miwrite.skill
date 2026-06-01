---
name: miwrite-data
description: 质性资料编码与分析 — 访谈、田野笔记、焦点小组
status: active
related_skills: [miwrite-organize, miwrite-review]
trigger_keywords: [资料分析, 编码, 质性分析, 访谈分析, 田野笔记, data analysis, coding, qualitative]
---

# 资料分析

## 何时使用

用户有访谈转录稿、田野笔记、焦点小组记录、档案文献等质性资料，需要系统性编码和分析。

## 输入

- **必需**：原始资料文本（input_text）+ 研究主题（topic）
- **可选**：分析深度（fast/standard/deep）、资料类型、分析框架、输出格式

## 输出

- 编码方案 + 证据锚定的分析报告
- 反例和矛盾保留
- 解释边界和人工判断提示
- [p.N] 页码锚点（PDF 来源）

## 调用方式

```bash
# MCP 调用
curl -X POST https://miwrite.art/api/mcp/remote/rpc \
  -H "Authorization: Bearer $MIWRITE_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "jsonrpc": "2.0",
    "id": 1,
    "method": "tools/call",
    "params": {
      "name": "run_data_analysis_pipeline",
      "arguments": {
        "input_text": "你的资料文本...",
        "topic": "研究主题",
        "analysis_depth": "standard"
      }
    }
  }'
```

## 深度选择

| 深度 | 说明 | 典型耗时 |
|------|------|---------|
| fast | 快速编码，跳过深度验证 | 30-60s |
| standard | 完整编码 + 验证 | 1-3min |
| deep | 穷尽编码 + 交叉验证 + 知识库检索 | 3-8min |

## 引用验证

输出中的引用会自动通过 Semantic Scholar API 验证。未找到的引用标记为 `[未找到]`。

## 反谄媚

如果资料中的论点存在问题（如样本偏差、逻辑跳跃），分析报告会明确指出，不会假装没问题。
