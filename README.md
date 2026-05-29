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

> 需要 bash/zsh 环境。Windows 用户请用 Git Bash 或 WSL。PowerShell 用户可参考各命令的等价操作。

所有方式都先克隆仓库：

```bash
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git ~/.miwrite-skill
```

然后在你的**项目目录**下执行对应工具的安装命令。安装过程不修改、不覆盖、不备份目标项目的任何现有文件。

### Claude Code

Claude Code 通过 `.claude/skills/<name>/SKILL.md` 自动发现技能，通过 `@` 语法导入上下文文件。

```bash
# 在 .claude/skills/ 下创建符号链接（不覆盖已有内容）
mkdir -p .claude/skills
ln -snf ~/.miwrite-skill/skills/lit-review .claude/skills/lit-review
ln -snf ~/.miwrite-skill/skills/close-reading .claude/skills/close-reading
ln -snf ~/.miwrite-skill/skills/polish .claude/skills/polish
ln -snf ~/.miwrite-skill/skills/review .claude/skills/review

# 在 CLAUDE.md 中添加一行导入（如果已有 CLAUDE.md 则追加）
echo '@~/.miwrite-skill/AGENTS.md' >> CLAUDE.md
```

Claude Code 会自动发现 `.claude/skills/` 下的 4 个技能，并通过 `@` 导入加载 AGENTS.md 通用规则。

### Codex CLI

Codex 读取项目根目录的 `AGENTS.md`。

```bash
# 在 .miwrite/ 下创建符号链接（不碰目标项目的 skills/ 目录）
mkdir -p .miwrite
ln -snf ~/.miwrite-skill/skills .miwrite/skills
ln -snf ~/.miwrite-skill/AGENTS.md .miwrite/AGENTS.md

# 在项目 AGENTS.md 中添加一行引用（不覆盖已有文件，不重复添加）
grep -q '.miwrite/AGENTS.md' AGENTS.md 2>/dev/null || echo '@.miwrite/AGENTS.md' >> AGENTS.md
```

安装后项目结构：
```
your-project/
├── AGENTS.md          ← 原有内容不变，末尾多一行 @.miwrite/AGENTS.md
├── .miwrite/          ← 新增，不与任何现有目录冲突
│   ├── AGENTS.md → ~/.miwrite-skill/AGENTS.md
│   └── skills/ → ~/.miwrite-skill/skills/
└── ...原有文件...
```

可重入：重复执行不会产生重复内容（`grep -q` 检查已存在则跳过）。

### OpenCode

```bash
mkdir -p .opencode/skills
ln -snf ~/.miwrite-skill/skills/lit-review .opencode/skills/lit-review
ln -snf ~/.miwrite-skill/skills/close-reading .opencode/skills/close-reading
ln -snf ~/.miwrite-skill/skills/polish .opencode/skills/polish
ln -snf ~/.miwrite-skill/skills/review .opencode/skills/review
```

### Cursor

Cursor 读取项目根目录的 `AGENTS.md`。

```bash
# 在 .miwrite/ 下创建符号链接
mkdir -p .miwrite
ln -snf ~/.miwrite-skill/skills .miwrite/skills
ln -snf ~/.miwrite-skill/AGENTS.md .miwrite/AGENTS.md

# 在项目 AGENTS.md 中添加一行引用
grep -q '.miwrite/AGENTS.md' AGENTS.md 2>/dev/null || echo '@.miwrite/AGENTS.md' >> AGENTS.md
```

注：Cursor 的 `.cursor/rules/` 使用 `.mdc` 格式，本仓库暂未提供。目前通过根目录 `AGENTS.md` 生效。

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
