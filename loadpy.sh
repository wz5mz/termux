#! /data/data/com.termux/files/usr/bin/bash/sh

# $1 = github repository name (NO slashes) e.g. tumor-entry
# $2 = filename to load into ~/.termux/tasker/ with extension (NO slashes) e.g. myscript.py

url=https://github.com/wz5mz/
url+=1
url+=.git
echo $url

copypath=./
copypath+=$1
copypath+=/
copypath+=$2
echo $copypath

path2=./
path2+=$2
echo $path2

cd ~/
git clone $url
cp $copypath ~/.termux/tasker/
cd ~/.termux/tasker/
termux-fix-shebang $path2
chmod +x $path2
cd ~/
rm -rf $1
