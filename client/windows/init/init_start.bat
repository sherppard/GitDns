@echo off

:: ���뵽�����ļ���·��
%~sd0
cd %~sp0

::����init_clone.sh���û���Ŀ¼
copy clone.sh %HOMEDRIVE%%HOMEPATH%

::��ָ��·�����sh.exe�Ƿ����,�жϴ��ں�����init_clone.sh��GitDns�Ŀ���������
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

:: ��client_ungit�µ������ļ�������ָ��λ��
copy C:\"Program Files"\GitDns\client\windows\client_ungit\client_ungit.bat %HOMEDRIVE%%HOMEPATH%\GitDns\

:: ɾ�� �� 
rd /q /s C:\"Program Files"\GitDns

:: ���뵽�����ļ���·��
%~sd0
cd %~sp0

:: ���û���¼����Ŀ¼,�����ݷ�ʽ
copy client.lnk %HOMEDRIVE%%HOMEPATH%\GitDns\
copy 19.ico %HOMEDRIVE%%HOMEPATH%\GitDns\
copy startup.bat %HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\

:: ���뵽�û���¼����Ŀ¼
c:
cd %HOMEDRIVE%%HOMEPATH%\GitDns\

PATH %PATH%;%~sdp0

:: �޸Ŀ�ݷ�ʽ,���%cd% �пո�,��Ҫ��"", ���û�оͲ���Ҫ��""
shortcut -f -c "%cd%\client.lnk" -t "%cd%\client_ungit.bat" -i "%cd%\19.ico" -d . -n "%cd%\client.lnk"

:: ͨ��client_ungit.lnk�Թ���Ա�������client_ungit.bat
%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\startup.bat

exit






