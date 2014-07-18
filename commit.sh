cd /d/dns/GitDns
pwd
PATH=/c/Users/Administrator/bin:.:/usr/local/bin:/mingw/bin:/bin:$PATH
echo $PATH
export x=`date -d today '+%Y-%m-%e %T'`
git add hosts
git commit -m "ip have been changed_`echo $x`"
git log -pretty=oneline
git push origin dev
exit
