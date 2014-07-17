cd /d/dns/GitDns
echo $PATH
x=`date today '+%Y-%m-%e %T'`
git add hosts
git commit -m 'ip have been changed_`echo $x`'
git push origin dev
exit
