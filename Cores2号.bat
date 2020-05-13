@echo off

echo Cores系统启动中，请等待．．．

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
echo 加载完毕

@ping -n 3 127.1 >nul 2>nul
cls

@ping -n 3 127.1 >nul 2>nul
if '%1'=='aixx' goto aixx
color f0
mode con: cols=62 lines=40
title Cores智能助手
:mai
echo %date% %time:~0,2%点%time:~3,2%分%time:~6,2%秒  Cores>%windir%\dh.txt
echo 您好，我是Cores，您的电脑智能助手，请输入help查看帮助 >>%windir%\dh.txt
echo. >>%windir%\dh.txt
:_m1
cls
type %windir%\dh.txt
echo ═══════════════════════════════
set shy=
set dns=
set dnz=
set /p shy=请输入你的话后回车:
if '%shy%'=='' goto _m1
echo %date% %time:~0,2%点%time:~3,2%分%time:~6,2%秒  我 >>%windir%\dh.txt
echo %shy% >>%windir%\dh.txt
echo. >>%windir%\dh.txt
set dns=对不起，我没明白您的意思，请输入help查看帮助
call :dnshb

echo %date% %time:~0,2%点%time:~3,2%分%time:~6,2%秒  Cores >>%windir%\dh.txt
echo %dns% >>%windir%\dh.txt
echo. >>%windir%\dh.txt
if /i '%dnz%'=='' goto fh
start "" %dnz%
:fh
goto _m1

:help
echo %date% %time:~0,2%点%time:~3,2%分%time:~6,2%秒  Cores >>%windir%\dh.txt
echo 帮助： >>%windir%\dh.txt
echo 输入： >>%windir%\dh.txt
echo exit：退出 >>%windir%\dh.txt
echo 刷屏：清空屏幕>>%windir%\dh.txt
echo ai学习机：打开ai学习机>>%windir%\dh.txt
echo ═══════>>%windir%\dh.txt
echo 命令： >>%windir%\dh.txt
echo %0 [aixx] >>%windir%\dh.txt
echo [aixx]：打开ai学习机 >>%windir%\dh.txt
echo ═══════>>%windir%\dh.txt
echo 我的主人： >>%windir%\dh.txt
echo saedycoder >>%windir%\dh.txt
echo 联系方式： >>%windir%\dh.txt
echo saedy-coder＠qq.com >>%windir%\dh.txt
echo. >>%windir%\dh.txt
goto _m1

:aixx
:rdm
set rd=
set /p rd=请输入人类的语言后回车:
if '%rd%'=='' goto rdm

:ddm
set dd=
set /p dd=请输入ai回话后回车:
if '%dd%'=='' goto ddm

set ml=
set /p ml=请输入ai命令后回车（空为无命令）:
echo if /i '%%shy%%'=='%rd%' set dns=%dd%^&set dnz=%ml%>>聊天机器人.bat
goto _m1

:dnshb
if /i '%shy%'=='help' goto help
if /i '%shy%'=='刷屏' goto mai
if /i '%shy%'=='exit' exit
if /i '%shy%'=='ai学习机' goto aixx