@echo off

:: ΪGitDns����Ŀ¼
::cd C:\"Program Files"

:: ���뵽�����ļ���·��
%~sd0
cd %~sp0

echo %cd%

:: ���init.bat���ڵ�Ŀ¼��PATH����
PATH %PATH%;%~sdp0

:: ���Ŀ�ݷ�ʽ����
shortcut -f -c %~sdp0\client.lnk -t %~sdp0\init_start.bat -d . -i %~sdp0\19.ico -n %~sdp0\client.lnk

:: ִ�п�ݷ�ʽ�Ի�ù���ԱȨ��
client.lnk

exit

