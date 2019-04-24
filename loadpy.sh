#! /data/data/com.termux/files/usr/bin/bash/sh

$1 (github directory)
$2 (filename with extension .py)

cd ~/
git clone https://github.com/wz5mz/ + $1 + .git
cp ./ + $1 + “/“ + $2 ~/.termux/tasker/
cd ~/.termux/tasker/
termux-fix-shebang ./ + $2
chmod +x ./ + $2
cd ~/
rm -rf $1
