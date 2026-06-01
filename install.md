# miwrite Skills 安装指南

## 方式一：Claude Code Plugin（推荐）

```bash
# 30 秒完成
/plugin marketplace add miwrite/miwrite-skills
/plugin install miwrite-skills

# 验证安装
/miwrite-data --help
```

## 方式二：手动安装（Cursor / 本地开发）

```bash
# 克隆仓库
git clone https://github.com/lcrxgzl-wq/miwrite.skill.git ~/.miwrite-skills

# 在项目中链接
ln -s ~/.miwrite-skills/skills/* .claude/skills/

# 配置 API key
export MIWRITE_API_KEY="your-api-key-here"
```

## 方式三：直接使用 MCP

不安装 Skills，直接通过 MCP 协议调用：

```bash
# 1. 获取 API key
# 访问 https://miwrite.art/mcp 注册并创建 key

# 2. 配置 Claude Desktop
# 编辑 ~/.claude/claude_desktop_config.json
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

# 3. 重启 Claude Desktop，即可使用 miwrite 工具
```

## 获取 API Key

1. 访问 https://miwrite.art/mcp
2. 登录（支持邮箱验证码登录）
3. 创建 MCP key
4. 复制 token（只显示一次）

## 定价

| 模型档位 | 典型费用 | 说明 |
|---------|---------|------|
| deepseek_v4_flash | ¥0.10-0.30 | 快速，适合草稿 |
| deepseek_v4_pro | ¥0.30-0.80 | 推荐，均衡 |
| expert_paid | ¥1.00-3.00 | 顶级，适合发表级 |

新用户注册赠送 ¥2.00 余额。
