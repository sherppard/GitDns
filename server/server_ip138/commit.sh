# 指定起始位置,notice: 修改为你的项目目录
cd /d/dns/GitDns
pwd

# 添加与gitbash相同的PATH变量,notice: /c/Users/Administrator/bin 这段路径可能需要更改
PATH=/c/Users/Administrator/bin:.:/usr/local/bin:/mingw/bin:/bin:$PATH
echo $PATH

# 提交的日期与时间
export x=`date -d today '+%Y-%m-%e %T'`

# 提交到远程库
git add ../../hosts
git commit -m "ip have been changed_`echo $x`"
ping -n 5 127.0.0.1 > nul
git push origin dev
exit
