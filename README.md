# .dotfiles

这是我的个人 dotfiles 配置仓库，用于统一管理和同步开发环境配置。

## 当前文件清单

- `.bashrc`：交互式 Bash 配置
- `.bash_profile`：登录 Shell 启动配置
- `.gitconfig`：Git 用户与全局配置
- `.tmux.conf`：tmux 快捷键与界面配置
- `.vimrc`：Vim 配置
- `.ssh/config`：SSH 主机连接配置
- `installdotfile.sh`：一键部署软链接脚本

## 快速开始

1. 克隆仓库到本地：
   ```bash
   git clone https://github.com/dngchnji-gmail/.dotfiles.git ~/.dotfiles
   ```
2. 执行安装脚本：
   ```bash
   cd ~/.dotfiles
   chmod +x installdotfile.sh
   ./installdotfile.sh
   ```

## 安装脚本行为说明

- 按预设列表自动处理：`.bashrc`、`.bash_profile`、`.tmux.conf`、`.vimrc`、`.gitconfig`、`.ssh/config`
- 若目标文件已存在且不是软链接，会先备份为 `*.bak`
- 然后将 `$HOME` 下对应文件链接到 `~/.dotfiles` 中的版本
