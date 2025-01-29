#!/bin/sh

## 权限授予 chmod u+x *.sh
# chmod u+x ./zzcommit.sh

# git push

# 获取提交信息
message="`date +%y-%m-%d,%H:%M`"
if [ "$1" != "" ] #前后保留空格
then
    message="$1"
fi

echo ======github page commit

# bitbucket
git remote set-url origin https://github.com/Jasonmin/msky.git
git pull

# 代码git提交
git add .
git commit -m "$message"
git push
