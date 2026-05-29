# miwrite.skill

面向中文社科研究者的学术写作 AI 技能集。基于 [miwrite.art](https://miwrite.art) 的实战 prompt 工程提炼，开箱即用。

## 包含技能

| 技能 | 触发词 | 用途 |
|------|--------|------|
| 文献综述 | `lit-review` | 多篇文献 → 结构化综述 + 对比矩阵 + 缺口检测 |
| 文本精读 | `close-reading` | 论文/报告 → 阅读地图 / 研究迁移 / 批判对话 |
| 润色转写 | `polish` | 中文学术文本润色 / 中英文学术转写 |
| 稿件评阅 | `review` | 论文/报告/书稿 → 模拟同行评审 + P0/P1/P2 修订表 |

## 快速安装

### Claude Code

```bash
# 克隆到本地
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git ~/.miwrite-skill

# 在你的项目目录下创建符号链接
ln -s ~/.miwrite-skill/skills/* .claude/skills/
```

或在项目根目录的 `CLAUDE.md` 中添加：

```
@~/.miwrite-skill/AGENTS.md
```

### Codex CLI

```bash
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git ~/.miwrite-skill
cat ~/.miwrite-skill/AGENTS.md >> AGENTS.md
```

### OpenCode

```bash
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git ~/.miwrite-skill
ln -s ~/.miwrite-skill/skills/* .opencode/skills/
```

### Cursor

```bash
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git ~/.miwrite-skill
# Cursor 2.5+ 直接读取 .claude/skills/
ln -s ~/.miwrite-skill/skills/* .claude/skills/
```

### 通用方式

直接复制 `skills/<name>/SKILL.md` 的内容粘贴到任何 AI 对话中即可使用。

## 使用方式

### 文献综述

将文献文本粘贴或作为文件提供，然后说明：

```
请基于这些文献，以"数字鸿沟与老年群体"为主题，生成一篇文献综述。
```

### 文本精读

提供论文全文（支持 PDF），然后说明：

```
请精读这篇论文，我需要借鉴它的研究设计。
```

技能会自动选择路线：阅读地图、研究迁移或批判对话。

### 润色转写

提供待润色文本，然后说明：

```
请以期刊论文标准润色这段文字。
```

或：

```
请将这段中文转写为英文学术论文风格（社会学方向）。
```

### 稿件评阅

提供待审稿件，然后说明：

```
请以同行评审模式评阅这篇论文。
```

技能会自动判断稿件类型（学术论文/报告政策/书稿）。

## 核心设计原则

1. **诊断先行**：先分析输入材料的类型、结构和证据边界，再执行具体任务
2. **证据锚定**：所有判断必须附带原文出处，不编造文献、数据或页码
3. **认识论克制**：保留"可能""在一定程度上"等限定语，不将关联升级为因果
4. **反 AI 套话**：自动检测并删除"综上所述""填补空白"等典型 AI 表达
5. **产品化输出**：不只是文本，而是可继续工作的研究材料

## 来源

从 [Mimi 学术助手](https://miwrite.art) 生产环境提炼。在线版支持三模型协作（DeepSeek + Gemini + Claude）、知识库检索、文件上传和流式输出。

## 许可

MIT
