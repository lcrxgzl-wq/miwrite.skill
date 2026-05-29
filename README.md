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

> 需要 bash/zsh 环境。Windows 用户请用 Git Bash 或 WSL。

### Claude Code

```bash
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git ~/.miwrite-skill
cd your-project
bash ~/.miwrite-skill/install-claude.sh
```

安装内容：
- `.claude/skills/*/SKILL.md` — 4 个技能的符号链接（Claude Code 自动发现）
- `CLAUDE.md` — 添加一行 `@~/.miwrite-skill/AGENTS.md` 导入通用规则

### Codex CLI / Cursor

```bash
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git ~/.miwrite-skill
cd your-project
bash ~/.miwrite-skill/install-codex.sh
```

安装内容：
- `AGENTS.md` — 扁平、自包含的通用规则（Codex 原生读取，无 @import）
- `src/skills/` — 符号链接到技能文件

如果项目已有 AGENTS.md，安装脚本会备份并追加，不会覆盖。

### OpenCode

```bash
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git ~/.miwrite-skill
cd your-project
mkdir -p .opencode/skills
ln -snf ~/.miwrite-skill/src/skills/lit-review .opencode/skills/lit-review
ln -snf ~/.miwrite-skill/src/skills/close-reading .opencode/skills/close-reading
ln -snf ~/.miwrite-skill/src/skills/polish .opencode/skills/polish
ln -snf ~/.miwrite-skill/src/skills/review .opencode/skills/review
```

### 通用方式（任何 AI 工具）

直接复制 `src/skills/<name>/SKILL.md` 的内容粘贴到对话中即可使用。

## 仓库结构

```
miwrite.skill/
├── AGENTS.md              ← 通用规则 + 苏格拉底协议（Codex/Cursor 直接读取）
├── install-claude.sh      ← Claude Code 一键安装
├── install-codex.sh       ← Codex/Cursor 一键安装
├── src/
│   ├── router.md          ← AGENTS.md 源文件
│   └── skills/
│       ├── lit-review/SKILL.md
│       ├── close-reading/SKILL.md
│       ├── polish/SKILL.md
│       └── review/SKILL.md
├── LICENSE
└── README.md
```

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

1. **苏格拉底式追问**：先诊断材料，再问 1-2 个针对性问题，最后执行
2. **证据锚定**：所有判断必须附带原文出处，不编造文献、数据或页码
3. **认识论克制**：保留"可能""在一定程度上"等限定语，不将关联升级为因果
4. **反 AI 套话**：自动检测并删除"综上所述""填补空白"等典型 AI 表达
5. **产品化输出**：不只是文本，而是可继续工作的研究材料

## 跨工具兼容性

| 工具 | 安装方式 | 技能发现 | 规则加载 |
|------|---------|---------|---------|
| Claude Code | install-claude.sh | `.claude/skills/*/SKILL.md` 自动发现 | `@import` in CLAUDE.md |
| Codex CLI | install-codex.sh | `src/skills/` 符号链接 | 根目录 AGENTS.md 原生读取 |
| Cursor | install-codex.sh | `src/skills/` 符号链接 | 根目录 AGENTS.md 原生读取 |
| OpenCode | 手动 ln | `.opencode/skills/` 符号链接 | SKILL.md frontmatter |

## 来源

从 [Mimi 学术助手](https://miwrite.art) 生产环境提炼。在线版支持三模型协作（DeepSeek + Gemini + Claude）、知识库检索、文件上传和流式输出。

## 许可

MIT — 详见 [LICENSE](LICENSE)
