@echo off

set URL="http://iframe.ip138.com/ic.asp"

for /f "tokens=2 delims=[]" %%a in ('wget -q "%URL%" -O -') do (

    set "PublicIP=%%a"

)

echo %PublicIP%  jamka.ze>hosts
pause