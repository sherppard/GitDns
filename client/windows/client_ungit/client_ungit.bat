@echo off

:: 为GitDns创建目录
::if not exist GitDns md GitDns

cd C:\"Program Files"
if exist GitDns rd /q /s C:\"Program Files"\GitDns

:: clone GitDns的仓库到本地,notice: 修改sh.exe的路径
CD %HOMEDRIVE%%HOMEPATH%
set c1=c:\"Program Files (x86)"\Git\bin\sh.exe
set d1=d:\"Program Files (x86)"\Git\bin\sh.exe
set e1=e:\"Program Files (x86)"\Git\bin\sh.exe
set f1=f:\"Program Files (x86)"\Git\bin\sh.exe
set g1=g:\"Program Files (x86)"\Git\bin\sh.exe

set c2=c:\"Program Files"\Git\bin\sh.exe
set d2=d:\"Program Files"\Git\bin\sh.exe
set e2=e:\"Program Files"\Git\bin\sh.exe
set f2=f:\"Program Files"\Git\bin\sh.exe
set g2=g:\"Program Files"\Git\bin\sh.exe

if exist %c1% %c1% --login -i clone.sh
if exist %d1% %d1% --login -i clone.sh
if exist %e1% %e1% --login -i clone.sh
if exist %f1% %f1% --login -i clone.sh
if exist %g1% %g1% --login -i clone.sh

if exist %c2% %c2% --login -i clone.sh
if exist %d2% %d2% --login -i clone.sh
if exist %e2% %e2% --login -i clone.sh
if exist %f2% %f2% --login -i clone.sh
if exist %g2% %g2% --login -i clone.sh


:: 将最新的hosts文件 覆盖 本地的hosts文件
c:
cd C:\"Program Files"\GitDns
copy hosts C:\Windows\System32\drivers\etc\hosts
