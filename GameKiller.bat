::��ӭʹ��
@echo off
echo.
echo =============== ��ӭʹ��  GameKiller by Kerosen ===============
goto menu

::ѡ��˵�
:menu
@echo off
echo.
echo.
echo       ��0��  �ر� Steam Client
echo.
echo.
echo       ��1��  �ر� Counter-Strike 2
echo.
echo.
echo       ��2��  �ر� PLAYERUNKNOWN'S BATTLEGROUNDS
echo.
echo.
echo       ��3��  �ر� Escape From Tarkov
echo.
echo.
echo       ��4��  �ر� Counter-Strike Global Offensive
echo.
echo.
echo       ��9��  �˳�
echo.
echo.


::ִ��ָ��
set /p input=^>^>^>^>^>^>^>������Ҫִ�е�ָ���ţ�
if "%input%"=="0" goto Steam
if "%input%"=="1" goto CS2
if "%input%"=="2" goto PUBG
if "%input%"=="3" goto EFT
if "%input%"=="4" goto CSGO
if "%input%"=="9" exit

goto error

::������
:error
echo ^>^>^>^>^>^>^>������...
echo ^>^>^>^>^>^>^>Error���������������
echo.
goto rechoose

::�ر����뷨����
:input
echo ���ڲ������뷨�ƽ���
taskkill /F /IM QQPYCloud.exe
taskkill /F /IM QQPYUserCenter.exe
taskkill /F /IM SogouCloud.exe
echo Done.
echo.
::������ת
echo ^>^>^>^>^>^>^>ִ�����
echo.
goto rechoose

::����ѡ��
:rechoose
echo.
echo ====================== �����ѡ�� ======================
goto menu


::�ر�Steamָ��
:Steam
echo ^>^>^>^>^>^>^>������...
echo.
echo ���ڲ���Steam��ؽ���
taskkill /F /IM Steam.exe
taskkill /F /IM SteamService.exe
taskkill /F /IM steamwebhelper.exe
echo Done.
echo.
goto input

::�ر�CSGOָ��
:CSGO
echo ^>^>^>^>^>^>^>������...
echo.
echo ���ڲ���CSGO��ؽ���
taskkill /F /IM CSGO.exe
echo Done.
echo.
goto input

::�ر�CS2ָ��
:CS2
echo ^>^>^>^>^>^>^>������...
echo.
echo ���ڲ���CSGO��ؽ���
taskkill /F /IM CS2.exe
echo Done.
echo.
goto input

::�ر�PUBGָ��
:PUBG
echo ^>^>^>^>^>^>^>������...
echo.
echo ���ڲ���PUBG��ؽ���
taskkill /F /IM TslGame.exe
taskkill /F /IM TslGame_BE.exe
taskkill /F /IM ExecPubg.exe
taskkill /F /IM iigw_sever.exe
taskkill /F /IM ucldr_battlegrounds_gl.exe
taskkill /F /IM zksvc.exe
echo Done.
echo.
goto input

::�ر�EFTָ��
:EFT
echo ^>^>^>^>^>^>^>������...
echo.
echo ���ڲ���EFT��ؽ���
taskkill /F /IM BsgLauncher.exe
taskkill /F /IM EscapeFromTarkov.exe
taskkill /F /IM EscapeFromTarkov_BE.exe
echo Done.
echo.
goto input
