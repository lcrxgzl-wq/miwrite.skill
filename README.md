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

所有方式都先克隆仓库：

```bash
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git ~/.miwrite-skill
```

然后在你的**项目目录**下执行对应工具的安装命令。

### Claude Code

```bash
# 创建 .claude/skills/ 并链接 4 个技能
mkdir -p .claude/skills
ln -sf ~/.miwrite-skill/skills/lit-review .claude/skills/lit-review
ln -sf ~/.miwrite-skill/skills/close-reading .claude/skills/close-reading
ln -sf ~/.miwrite-skill/skills/polish .claude/skills/polish
ln -sf ~/.miwrite-skill/skills/review .claude/skills/review
```

然后在项目根目录的 `CLAUDE.md` 中添加一行：

```
@~/.miwrite-skill/AGENTS.md
```

这样 AGENTS.md 的 `skills/...` 路径通过 `.claude/skills/` 下的符号链接自然解析。

### Codex CLI

```bash
# 链接 AGENTS.md 到项目根目录（不覆盖已有文件）
test -f AGENTS.md || ln -sf ~/.miwrite-skill/AGENTS.md ./AGENTS.md

# 链接 skills 目录
ln -sf ~/.miwrite-skill/skills ./skills
```

Codex 读取项目根目录的 `AGENTS.md`，其中的 `skills/...` 路径通过 `./skills` 符号链接解析。

### OpenCode

```bash
mkdir -p .opencode/skills
ln -sf ~/.miwrite-skill/skills/lit-review .opencode/skills/lit-review
ln -sf ~/.miwrite-skill/skills/close-reading .opencode/skills/close-reading
ln -sf ~/.miwrite-skill/skills/polish .opencode/skills/polish
ln -sf ~/.miwrite-skill/skills/review .opencode/skills/review
```

### Cursor

Cursor 读取项目根目录的 `AGENTS.md` 和 `.cursor/rules/*.mdc`。

```bash
# 链接 AGENTS.md（不覆盖已有文件）
test -f AGENTS.md || ln -sf ~/.miwrite-skill/AGENTS.md ./AGENTS.md

# 链接 skills 到项目，供 AGENTS.md 路径解析
ln -sf ~/.miwrite-skill/skills ./skills
```

注：Cursor 的 `.cursor/rules/` 使用 `.mdc` 格式，本仓库暂未提供 `.mdc` 包装。目前 Cursor 集成通过根目录 `AGENTS.md` 生效，技能文件通过 `./skills` 符号链接供 AI 在对话中读取。

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
