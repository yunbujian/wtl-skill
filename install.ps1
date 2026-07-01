$skillDir = "$env:USERPROFILE\.claude\skills\wtl"
New-Item -ItemType Directory -Force -Path $skillDir | Out-Null
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/yunbujian/wtl-skill/main/SKILL.md" -OutFile "$skillDir\SKILL.md"
Write-Host "✓ 安装完成。在 Claude Code 里输入 /wtl 开始使用。"
