#!/bin/bash
set -e

SKILL_DIR="$HOME/.claude/skills/wtl"

if [ -d "$SKILL_DIR" ]; then
  echo "正在更新 wtl skill..."
else
  echo "正在安装 wtl skill..."
  mkdir -p "$SKILL_DIR"
fi

curl -fsSL https://raw.githubusercontent.com/yunbujian/wtl-skill/main/SKILL.md -o "$SKILL_DIR/SKILL.md"

echo "✓ 安装完成。在 Claude Code 里输入 /wtl 开始使用。"
