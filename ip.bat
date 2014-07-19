@echo off
set URL="http://20140507.ip138.com/ic.asp"

for /f "tokens=2 delims=[]" %%a in ('wget -q "%URL%" -O -') do (

    set "PublicIP=%%a"

)

echo %PublicIP% jamka.ze
echo. >> C:\Windows\System32\drivers\etc\hosts
echo. >> C:\Windows\System32\drivers\etc\hosts
echo #personal for GitDns >> C:\Windows\System32\drivers\etc\hosts
echo %PublicIP% jamka.ze >> C:\Windows\System32\drivers\etc\hosts

pause