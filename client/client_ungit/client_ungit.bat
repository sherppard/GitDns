@echo off

:: ΪGitDns����Ŀ¼
::if not exist GitDns md GitDns

cd C:\"Program Files"
if exist GitDns rd /q /s C:\"Program Files"\GitDns

:: clone GitDns�Ĳֿ⵽����,notice: �޸�sh.exe��·��
CD %HOMEDRIVE%%HOMEPATH%
D:\"Program Files"\Git\bin\sh.exe --login -i clone.sh

:: �����µ�hosts�ļ� ���� ���ص�hosts�ļ�
c:
cd C:\"Program Files"\GitDns
copy hosts C:\Windows\System32\drivers\etc\hosts
