# /usr/bin/env bash

# 本脚本将XLerobot的部分文件拷贝到 lerobot 安装目录下

LEROBOT_DIR="$HOME/lerobot"

# 获取当前脚本所在的目录
XLE_SOFTWARE_DIR=$(dirname $(readlink -f $0))

# 拷贝model
cp $XLE_SOFTWARE_DIR/src/model/SO101Robot.py $LEROBOT_DIR/src/lerobot/model/

# 拷贝 xlerobot 到 robots 目录
cp -r $XLE_SOFTWARE_DIR/src/robots/xlerobot $LEROBOT_DIR/src/lerobot/robots/
cp -r $XLE_SOFTWARE_DIR/src/robots/xlerobot_2wheels $LEROBOT_DIR/src/lerobot/robots/

# 创建 examples/xlerobot 目录
mkdir -p $LEROBOT_DIR/examples/xlerobot
# 拷贝 examples 中的脚本到 lerobot/examples 目录
cp $XLE_SOFTWARE_DIR/examples/*.py $LEROBOT_DIR/examples/xlerobot

exit 0
