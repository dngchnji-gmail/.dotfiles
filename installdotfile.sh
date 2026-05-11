#!/bin/bash
# Dotfiles 自动安装脚本 - 一键软链接所有配置文件

# 定义 dotfiles 目录
DOTFILES_DIR="$HOME/.dotfiles"

# 需要自动部署的文件列表（你仓库里的文件）
FILES=(
  .bashrc
  .bash_profile
  .tmux.conf
  .vimrc
  .gitconfig
  .ssh/config
)

echo "=== 开始自动部署 dotfiles ==="

# 遍历文件，创建软链接
for file in "${FILES[@]}"; do
  # 源文件
  src="$DOTFILES_DIR/$file"
  # 目标位置
  dest="$HOME/$file"

  # 如果目标已存在，先备份
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "备份：$dest → $dest.bak"
    mv "$dest" "$dest.bak"
  fi

  # 创建软链接
  ln -sfn "$src" "$dest"
  echo "已链接：$src → $dest"
done

echo -e "\n=== 部署完成！所有 dotfiles 已自动生效 ==="

