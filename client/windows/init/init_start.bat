@echo off

:: ���뵽�����ļ���·��
%~sd0
cd %~sp0

::����init_clone.sh���û���Ŀ¼
copy init_clone.sh %HOMEDRIVE%%HOMEPATH%

::��ָ��·�����sh.exe�Ƿ����,�жϴ��ں�����init_clone.sh��GitDns�Ŀ���������
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

if exist %c1% %c1% --login -i init_clone.sh
if exist %d1% %d1% --login -i init_clone.sh
if exist %e1% %e1% --login -i init_clone.sh
if exist %f1% %f1% --login -i init_clone.sh
if exist %g1% %g1% --login -i init_clone.sh

if exist %c2% %c2% --login -i init_clone.sh
if exist %d2% %d2% --login -i init_clone.sh
if exist %e2% %e2% --login -i init_clone.sh
if exist %f2% %f2% --login -i init_clone.sh
if exist %g2% %g2% --login -i init_clone.sh

:: ��client_ungit�µ������ļ�������ָ��λ��
copy C:\"Program Files"\GitDns\client\client_ungit\client_ungit.bat %HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup
copy C:\"Program Files"\GitDns\client\client_ungit\clone.sh %HOMEDRIVE%%HOMEPATH%

:: ɾ�� �� �� init_clone.sh �ű�
rd /q /s C:\"Program Files"\GitDns
del %HOMEDRIVE%%HOMEPATH%\init_clone.sh

:: ���뵽�����ļ���·��
%~sd0
cd %~sp0

:: ���û���¼����Ŀ¼,�����ݷ�ʽ
cp client.lnk %HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\
cp 19.ico %HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\

:: ���뵽�û���¼����Ŀ¼
c:
cd %HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\

:: �޸Ŀ�ݷ�ʽ
shortcut -f -c client.lnk -t client_ungit.bat -i 19.ico -d "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\" -n client_ungit.lnk

:: ͨ��client_ungit.lnk�Թ���Ա�������client_ungit.bat
%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\client.lnk







