@echo off

:: ΪGitDns����Ŀ¼
::if not exist GitDns md GitDns

cd C:\"Program Files"
if exist GitDns rd /q /s C:\"Program Files"\GitDns

:: clone GitDns�Ĳֿ⵽����,notice: �޸�sh.exe��·��
CD %HOMEDRIVE%%HOMEPATH%
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


:: �����µ�hosts�ļ� ���� ���ص�hosts�ļ�
c:
cd C:\"Program Files"\GitDns
copy hosts C:\Windows\System32\drivers\etc\hosts
