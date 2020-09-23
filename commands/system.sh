#!/bin/sh
#
# 系统设置

source $BIN_PATH/lib/console

# 设置代理
proxy() {
  info "Input you terminal proxy."
  read -r proxy
  echo "export http_proxy=$proxy" >> ~/.proxyrc
  echo "export https_proxy=$proxy" >> ~/.proxyrc
}

# 取消代理
unproxy() {

}

case $1 in
'' | 'h' | 'help')
  cat <<EOF
  Usage: ${BIN_NAME} sys <command>

  Commands:
    proxy     设置代理
    unproxy   取消代码
EOF
  ;;
'proxy')
  ;;
*)
  fail "Invalid command"
  ;;
esac

