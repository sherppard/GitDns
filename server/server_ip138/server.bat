@echo off

set URL="http://20140507.ip138.com/ic.asp"

:again

for /f "tokens=2 delims=[]" %%a in ('wget -q "%URL%" -O -') do (

    set "PublicIP=%%a"

)
echo %PublicIP% jamka.ze

:: �ж�wget�ܷ��ȡ��ip��ַ

if NOT defined PublicIP (
ping 127.1 -n 10>nul
goto again
)

:: ��ȡhosts�ļ���ip��ַ,notice: grep������û���
type ..\..\hosts | grep sherpper | cut -d' ' -f1 > temp
set /p beforeIP=<temp & del temp

:: �ж�ip��ַ�Ƿ�䶯
if %PublicIP%==%beforeIP% (
exit
)else (
:: ����ip��ַ��д�ű�,notice: �޸�sh.exe ��·��
E:\"Program Files (x86)"\Git\bin\sh.exe rewrite.sh

:: �����ύ��github�Ľű�,notice: �޸�sh.exe ��·��
cd %HOMEDRIVE%%HOMEPATH%  
E:\"Program Files (x86)"\Git\bin\sh.exe --login -i commit.sh
exit
)

