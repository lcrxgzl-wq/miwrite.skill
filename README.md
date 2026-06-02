# miwrite 学术技能

一套面向中文社科研究者的 Claude Code / Cursor 技能，覆盖从材料整理到论文发表的完整流程。

## 安装

### 方式一：自动加载（最简单）

```bash
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git /tmp/miwrite-skills
mkdir -p ~/.claude/skills
cp -r /tmp/miwrite-skills/skills/* ~/.claude/skills/
rm -rf /tmp/miwrite-skills
```

重启 Claude Code，`/miwrite-data`、`/miwrite-lit` 等命令自动出现。

### 方式二：CLI Marketplace

```bash
claude plugin marketplace add lcrxgzl-wq/miwrite.skill
claude plugin install miwrite-skills@lcrxgzl-wq-miwrite-skill
```

### 方式三：本地目录

```bash
claude --plugin-dir /path/to/skills
```

### 方式四：MCP 协议（不装 Skills）

```bash
claude mcp add-json miwrite '{"type":"url","url":"https://miwrite.art/api/mcp/remote/rpc","headers":{"Authorization":"Bearer YOUR_API_KEY"}}'
```

## 技能列表

| 技能 | 命令 | 说明 |
|------|------|------|
| 资料分析 | `/miwrite-data` | 质性资料编码与分析 |
| 文献综述 | `/miwrite-lit` | 文献综述合成 |
| 文本精读 | `/miwrite-read` | 论文/报告深度阅读 |
| 资料主线 | `/miwrite-organize` | 混合材料结构化整理 |
| 稿件评阅 | `/miwrite-review` | 论文/报告评审 |
| 润色转写 | `/miwrite-polish` | 学术写作润色/中译英 |
| 苏格拉底对话 | `/miwrite-ask` | 研究问题引导对话 |

## MCP 接入

所有技能底层调用 miwrite MCP API。需要：
1. 在 https://miwrite.art/mcp 注册并创建 API key
2. 配置环境变量 `MIWRITE_API_KEY`

## 与 ARS 的区别

| 维度 | miwrite Skills | ARS |
|------|---------------|-----|
| 接入方式 | MCP 远程 API | Claude Code Skills |
| 安装 | 一键安装 | 需要 Claude Code |
| 语言 | 中文原生 | 英文核心 |
| 定价 | 按次计费 ¥0.10 起 | 免费但自付 API $4-6/篇 |
| 资料分析 | 独立强项 | 无 |

## 许可

MIT License
