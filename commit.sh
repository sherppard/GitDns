cd /d/dns/GitDns
pwd
PATH=/c/Users/Administrator/bin:.:/usr/local/bin:/mingw/bin:/bin:$PATH
echo $PATH
x=`date -d today '+%Y-%m-%e %T'`
git add hosts
git commit -m "ip have been changed_`echo $x`"
git push origin dev
exit
