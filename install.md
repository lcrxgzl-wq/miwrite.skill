# miwrite Skills 安装指南

## 方式一：自动加载（最简单）

Claude Code v2.1.157+ 支持 `.claude/skills/` 目录自动加载，无需 marketplace。

```bash
# 克隆仓库
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git /tmp/miwrite-skills

# 复制到用户级 skills 目录（全局生效）
mkdir -p ~/.claude/skills
cp -r /tmp/miwrite-skills/skills/* ~/.claude/skills/

# 或复制到项目级目录（仅当前项目）
mkdir -p .claude/skills
cp -r /tmp/miwrite-skills/skills/* .claude/skills/

# 清理临时文件
rm -rf /tmp/miwrite-skills
```

复制后重启 Claude Code，技能自动出现在 `/` 命令列表中。

## 方式二：CLI Marketplace 安装

```bash
# 1. 添加 marketplace 源（只需一次）
claude plugin marketplace add lcrxgzl-wq/miwrite.skill

# 2. 安装插件
claude plugin install miwrite-skills@lcrxgzl-wq-miwrite-skill

# 3. 验证
claude plugin details miwrite-skills
```

注意：`/plugin` 是交互式界面，不接受命令行参数。请在系统终端（非 Claude Code REPL）中执行上述命令。

## 方式三：本地目录加载（开发/调试）

```bash
# 直接指向本地 skills 目录
claude --plugin-dir D:/download/v2/skills

# 或指向 zip 包
claude --plugin-url https://github.com/lcrxgzl-wq/miwrite.skill/archive/refs/heads/main.zip
```

## 方式四：MCP 协议（不安装 Skills）

不安装 Skills，直接通过 MCP 协议调用后端能力：

```json
{
  "mcpServers": {
    "miwrite": {
      "url": "https://miwrite.art/api/mcp/remote/rpc",
      "headers": {
        "Authorization": "Bearer YOUR_API_KEY"
      }
    }
  }
}
```

配置文件位置：
- Claude Desktop: `~/.claude/claude_desktop_config.json`
- Claude Code: `.claude/settings.json` 中的 `mcpServers` 字段

## 获取 API Key

1. 访问 https://miwrite.art/mcp
2. 登录（支持邮箱验证码登录）
3. 点击"创建 Key"
4. 复制 token（只显示一次）

## 定价

| 模型档位 | 输入价格 | 输出价格 | 说明 |
|---------|---------|---------|------|
| Flash | ¥10/1M | ¥20/1M | 快速，适合草稿 |
| Pro | ¥20/1M | ¥40/1M | 推荐，均衡 |
| Opus | ¥200/1M | ¥600/1M | 顶级，适合发表级 |

- 本地执行（Skills）：免费，不消耗 token
- 远程调用（MCP）：按实际 token 计费
- `search_kb` 工具：免费（200 次/天）
- 新用户注册赠送 ¥2.00 余额
