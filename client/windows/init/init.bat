@echo off

:: ΪGitDns����Ŀ¼
::cd C:\"Program Files"

:: ���뵽�����ļ���·��
%~sd0
cd %~sp0

:: ���init.bat���ڵ�Ŀ¼��PATH����
PATH %PATH%;%~sdp0

:: ���Ŀ�ݷ�ʽ����
shortcut -f -c .\client.lnk -t .\init_start.bat -d . -i .\19.ico -n .\client.lnk

:: ִ�п�ݷ�ʽ�Ի�ù���ԱȨ��
client.lnk




