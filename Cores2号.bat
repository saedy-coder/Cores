@echo off

echo Coresϵͳ�����У���ȴ�������

@ping -n 3 127.1 >nul 2>nul
echo                       ........

@ping -n 3 127.1 >nul 2>nul
echo                      ..........

@ping -n 3 127.1 >nul 2>nul
echo                     ............

@ping -n 3 127.1 >nul 2>nul
echo                    ..............

@ping -n 3 127.1 >nul 2>nul
echo                     ............

@ping -n 3 127.1 >nul 2>nul
echo                      ..........

@ping -n 3 127.1 >nul 2>nul
echo                       ........


@ping -n 7 127.1 >nul 2>nul
echo �������

@ping -n 3 127.1 >nul 2>nul
cls

@ping -n 3 127.1 >nul 2>nul
if '%1'=='aixx' goto aixx
color f0
mode con: cols=62 lines=40
title Cores��������
:mai
echo %date% %time:~0,2%��%time:~3,2%��%time:~6,2%��  Cores>%windir%\dh.txt
echo ���ã�����Cores�����ĵ����������֣�������help�鿴���� >>%windir%\dh.txt
echo. >>%windir%\dh.txt
:_m1
cls
type %windir%\dh.txt
echo �T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T
set shy=
set dns=
set dnz=
set /p shy=��������Ļ���س�:
if '%shy%'=='' goto _m1
echo %date% %time:~0,2%��%time:~3,2%��%time:~6,2%��  �� >>%windir%\dh.txt
echo %shy% >>%windir%\dh.txt
echo. >>%windir%\dh.txt
set dns=�Բ�����û����������˼��������help�鿴����
call :dnshb

echo %date% %time:~0,2%��%time:~3,2%��%time:~6,2%��  Cores >>%windir%\dh.txt
echo %dns% >>%windir%\dh.txt
echo. >>%windir%\dh.txt
if /i '%dnz%'=='' goto fh
start "" %dnz%
:fh
goto _m1

:help
echo %date% %time:~0,2%��%time:~3,2%��%time:~6,2%��  Cores >>%windir%\dh.txt
echo ������ >>%windir%\dh.txt
echo ���룺 >>%windir%\dh.txt
echo exit���˳� >>%windir%\dh.txt
echo ˢ���������Ļ>>%windir%\dh.txt
echo aiѧϰ������aiѧϰ��>>%windir%\dh.txt
echo �T�T�T�T�T�T�T>>%windir%\dh.txt
echo ��� >>%windir%\dh.txt
echo %0 [aixx] >>%windir%\dh.txt
echo [aixx]����aiѧϰ�� >>%windir%\dh.txt
echo �T�T�T�T�T�T�T>>%windir%\dh.txt
echo �ҵ����ˣ� >>%windir%\dh.txt
echo saedycoder >>%windir%\dh.txt
echo ��ϵ��ʽ�� >>%windir%\dh.txt
echo saedy-coder��qq.com >>%windir%\dh.txt
echo. >>%windir%\dh.txt
goto _m1

:aixx
:rdm
set rd=
set /p rd=��������������Ժ�س�:
if '%rd%'=='' goto rdm

:ddm
set dd=
set /p dd=������ai�ػ���س�:
if '%dd%'=='' goto ddm

set ml=
set /p ml=������ai�����س�����Ϊ�����:
echo if /i '%%shy%%'=='%rd%' set dns=%dd%^&set dnz=%ml%>>���������.bat
goto _m1

:dnshb
if /i '%shy%'=='help' goto help
if /i '%shy%'=='ˢ��' goto mai
if /i '%shy%'=='exit' exit
if /i '%shy%'=='aiѧϰ��' goto aixx