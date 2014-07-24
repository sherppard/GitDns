@echo off

:: 进入到下载文件的路径
%~sd0
cd %~sp0

::复制init_clone.sh到用户主目录
copy clone.sh %HOMEDRIVE%%HOMEPATH%

::在指定路径检查sh.exe是否存在,判断存在后运行init_clone.sh将GitDns的库下载下来
c:
CD %HOMEDRIVE%%HOMEPATH%

if not exist GitDns md GitDns

set c1=c:\"Program Files (x86)"\Git\bin\sh.exe
if exist %c1% %c1% --login -i clone.sh

set d1=d:\"Program Files (x86)"\Git\bin\sh.exe
if exist %d1% %d1% --login -i clone.sh

set e1=e:\"Program Files (x86)"\Git\bin\sh.exe
if exist %e1% %e1% --login -i clone.sh

set f1=f:\"Program Files (x86)"\Git\bin\sh.exe
if exist %f1% %f1% --login -i clone.sh

set g1=g:\"Program Files (x86)"\Git\bin\sh.exe
if exist %g1% %g1% --login -i clone.sh

set c2=c:\"Program Files"\Git\bin\sh.exe
if exist %c2% %c2% --login -i clone.sh

set d2=d:\"Program Files"\Git\bin\sh.exe
if exist %d2% %d2% --login -i clone.sh

set e2=e:\"Program Files"\Git\bin\sh.exe
if exist %e2% %e2% --login -i clone.sh

set f2=f:\"Program Files"\Git\bin\sh.exe
if exist %f2% %f2% --login -i clone.sh

set g2=g:\"Program Files"\Git\bin\sh.exe
if exist %g2% %g2% --login -i clone.sh

:: 将client_ungit下的两个文件拷贝到指定位置
copy C:\"Program Files"\GitDns\client\windows\client_ungit\client_ungit.bat %HOMEDRIVE%%HOMEPATH%\GitDns\

:: 删除 库 
rd /q /s C:\"Program Files"\GitDns

:: 进入到下载文件的路径
%~sd0
cd %~sp0

:: 在用户登录启动目录,放入快捷方式
copy client.lnk %HOMEDRIVE%%HOMEPATH%\GitDns\
copy 19.ico %HOMEDRIVE%%HOMEPATH%\GitDns\
copy startup.bat %HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\

:: 进入到用户登录启动目录
c:
cd %HOMEDRIVE%%HOMEPATH%\GitDns\

PATH %PATH%;%~sdp0

:: 修改快捷方式,如果%cd% 有空格,需要加"", 如果没有就不需要加""
shortcut -f -c "%cd%\client.lnk" -t "%cd%\client_ungit.bat" -i "%cd%\19.ico" -d . -n "%cd%\client.lnk"

:: 通过client_ungit.lnk以管理员身份运行client_ungit.bat
%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\startup.bat

exit






