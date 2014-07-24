@echo off

:: 为GitDns创建目录
::cd C:\"Program Files"

:: 进入到下载文件的路径
%~sd0
cd %~sp0

:: 添加init.bat所在的目录到PATH变量
PATH %PATH%;%~sdp0

:: 更改快捷方式内容
shortcut -f -c .\client.lnk -t .\init_start.bat -d . -i .\19.ico -n .\client.lnk

:: 执行快捷方式以获得管理员权限
client.lnk




