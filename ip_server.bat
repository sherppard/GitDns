@echo off

set URL="http://20140507.ip138.com/ic.asp"

:again

for /f "tokens=2 delims=[]" %%a in ('wget -q "%URL%" -O -') do (

    set "PublicIP=%%a"

)
echo %PublicIP% jamka.ze
:: 等于null 要严格测试
if NOT defined PublicIP (
ping 127.1 -n 10>nul
goto again
)

type hosts | grep sherpper | cut -d' ' -f1 > temp
set /p beforeIP=<temp & del temp

if %PublicIP%==%beforeIP% (
exit
)else (
D:\"Program Files (x86)"\Git\bin\sh.exe rewrite.sh
::D:\"Program Files (x86)"\Git\bin\sh.exe commit.sh
cd C:\Users\Administrator
D:\"Program Files (x86)"\Git\bin\sh.exe --login -i commit.sh
exit
)

