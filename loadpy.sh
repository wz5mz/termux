#! /data/data/com.termux/files/usr/bin/bash/sh

# $1 = github directory without ANY slashes
# $2 = filename with extension (NO slashes)

url=https://github.com/wz5mz/
url+=$1
url+=.git
echo $url

copypath=./
copypath+=$1
copypath+=/
copypath+=$2

path2=./
path2+=$2

cd ~/
git clone url
cp copypath ~/.termux/tasker/
cd ~/.termux/tasker/
termux-fix-shebang path2
chmod +x path2
cd ~/
rm -rf $1
