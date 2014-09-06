@echo off

set URL="http://20140507.ip138.com/ic.asp"

:again

for /f "tokens=2 delims=[]" %%a in ('wget -q "%URL%" -O -') do (

    set "PublicIP=%%a"

)
echo %PublicIP% jamka.ze

:: 判断wget能否获取到ip地址

if NOT defined PublicIP (
ping 127.1 -n 10>nul
goto again
)

:: 提取hosts文件的ip地址,notice: grep后面的用户名
type ..\..\hosts | grep sherpper | cut -d' ' -f1 > temp
set /p beforeIP=<temp & del temp

:: 判断ip地址是否变动
if %PublicIP%==%beforeIP% (
exit
)else (
:: 运行ip地址重写脚本,notice: 修改sh.exe 的路径
E:\"Program Files (x86)"\Git\bin\sh.exe rewrite.sh

:: 运行提交到github的脚本,notice: 修改sh.exe 的路径
cd %HOMEDRIVE%%HOMEPATH%  
E:\"Program Files (x86)"\Git\bin\sh.exe --login -i commit.sh
exit
)

