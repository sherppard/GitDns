@echo off

:: 为GitDns创建目录
::if not exist GitDns md GitDns

cd C:\"Program Files"
if exist GitDns rd /q /s C:\"Program Files"\GitDns

:: clone GitDns的仓库到本地,notice: 修改sh.exe的路径
CD %HOMEDRIVE%%HOMEPATH%
D:\"Program Files"\Git\bin\sh.exe --login -i clone.sh

:: 将最新的hosts文件 覆盖 本地的hosts文件
c:
cd C:\"Program Files"\GitDns
copy hosts C:\Windows\System32\drivers\etc\hosts
