@echo off

:: 为GitDns创建目录
::cd C:\"Program Files"

copy init_clone.sh %HOMEDRIVE%%HOMEPATH%

CD %HOMEDRIVE%%HOMEPATH%
D:\"Program Files"\Git\bin\sh.exe --login -i init_clone.sh

copy C:\"Program Files"\GitDns\client\client_ungit_x86\client_ungit.bat %HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup

copy C:\"Program Files"\GitDns\client\client_ungit_x86\clone.sh %HOMEDRIVE%%HOMEPATH%

rd /q /s C:\"Program Files"\GitDns

del %HOMEDRIVE%%HOMEPATH%\init_clone.sh

%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\client_ungit.bat

