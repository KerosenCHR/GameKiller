::欢迎使用
@echo off
echo.
echo =============== 欢迎使用  GameKiller by Kerosen ===============
goto menu

::选项菜单
:menu
@echo off
echo.
echo.
echo       【0】  关闭 Steam Client
echo.
echo.
echo       【1】  关闭 Counter-Strike 2
echo.
echo.
echo       【2】  关闭 PLAYERUNKNOWN'S BATTLEGROUNDS
echo.
echo.
echo       【3】  关闭 Escape From Tarkov
echo.
echo.
echo       【4】  关闭 Counter-Strike Global Offensive
echo.
echo.
echo       【9】  退出
echo.
echo.


::执行指令
set /p input=^>^>^>^>^>^>^>请输入要执行的指令编号：
if "%input%"=="0" goto Steam
if "%input%"=="1" goto CS2
if "%input%"=="2" goto PUBG
if "%input%"=="3" goto EFT
if "%input%"=="4" goto CSGO
if "%input%"=="9" exit

goto error

::错误处理
:error
echo ^>^>^>^>^>^>^>处理中...
echo ^>^>^>^>^>^>^>Error：输入错误，请重试
echo.
goto rechoose

::关闭输入法进程
:input
echo 正在查找输入法云进程
taskkill /F /IM QQPYCloud.exe
taskkill /F /IM QQPYUserCenter.exe
taskkill /F /IM SogouCloud.exe
echo Done.
echo.
::结束跳转
echo ^>^>^>^>^>^>^>执行完毕
echo.
goto rechoose

::重新选择
:rechoose
echo.
echo ====================== 请继续选择 ======================
goto menu


::关闭Steam指令
:Steam
echo ^>^>^>^>^>^>^>处理中...
echo.
echo 正在查找Steam相关进程
taskkill /F /IM Steam.exe
taskkill /F /IM SteamService.exe
taskkill /F /IM steamwebhelper.exe
echo Done.
echo.
goto input

::关闭CSGO指令
:CSGO
echo ^>^>^>^>^>^>^>处理中...
echo.
echo 正在查找CSGO相关进程
taskkill /F /IM CSGO.exe
echo Done.
echo.
goto input

::关闭CS2指令
:CS2
echo ^>^>^>^>^>^>^>处理中...
echo.
echo 正在查找CSGO相关进程
taskkill /F /IM CS2.exe
echo Done.
echo.
goto input

::关闭PUBG指令
:PUBG
echo ^>^>^>^>^>^>^>处理中...
echo.
echo 正在查找PUBG相关进程
taskkill /F /IM TslGame.exe
taskkill /F /IM TslGame_BE.exe
taskkill /F /IM ExecPubg.exe
taskkill /F /IM iigw_sever.exe
taskkill /F /IM ucldr_battlegrounds_gl.exe
taskkill /F /IM zksvc.exe
echo Done.
echo.
goto input

::关闭EFT指令
:EFT
echo ^>^>^>^>^>^>^>处理中...
echo.
echo 正在查找EFT相关进程
taskkill /F /IM BsgLauncher.exe
taskkill /F /IM EscapeFromTarkov.exe
taskkill /F /IM EscapeFromTarkov_BE.exe
echo Done.
echo.
goto input
