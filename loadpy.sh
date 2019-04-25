#! /data/data/com.termux/files/usr/bin/bash

# $1 = github repository name (NO slashes) e.g. tumor-entry
# $2 = filename to load into ~/.termux/tasker/ with extension (NO slashes) e.g. myscript.py

url="https://github.com/wz5mz/$1.git"
echo $url

copypath=./$1/$2
echo $copypath

path2=./$2
echo $path2

#cd ~/
#git clone $url
#cp $copypath ~/.termux/tasker/
#cd ~/.termux/tasker/
#termux-fix-shebang $path2
#chmod +x $path2
#cd ~/
#rm -rf $1

cd ~/
git clone "https://github.com/wz5mz/enter-tumor.git"
cp "./enter-tumor/enter_size.py" ~/.termux/tasker/
cd ~/.termux/tasker/
termux-fix-shebang "./enter_size.py"
chmod +x "./enter_size.py"
cd ~/
rm -rf "enter-tumor"
