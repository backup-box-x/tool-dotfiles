#!/bin/sh
#
# 安装脚本

#######################################
# 帮助
#######################################
usage() {
cat <<EOF
Usage: dot install [command]
Available Commands:
  brew     Homebrew 安装
  git      Git 环境
  iterm    终端配置
  macos    系统偏好设置
  neovim   NeoVim 配置
  node     Node 环境
  vscode   VSCode 开发环境
  zsh      zsh 环境
  help     帮助文档
EOF
}

#######################################
# 入口
#######################################
main() {
  case $1 in
    '')
      dot install zsh
      dot install brew
      dot install iterm2
      dot install git
      dot install node
      dot install neovim
      dot install os
      ;;
    zsh)
      zsh $DOTDIR/user/zsh/install.sh
      ;;
    brew)
      sh $DOTDIR/user/brew/install.sh
      ;;
    iterm2)
      sh $DOTDIR/user/iterm2/install.sh
      ;;
    git)
      sh $DOTDIR/user/git/install.sh
      ;;
    node)
      sh $DOTDIR/user/node/install.sh
      ;;
    neovim)
      sh $DOTDIR/user/neovim/install.sh
      ;;
    os)
      sh $DOTDIR/user/os/install.sh
      ;;
    help)
      usage
      ;;
  esac
}

main "$@"
