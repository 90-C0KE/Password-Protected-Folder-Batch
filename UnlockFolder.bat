::                               ::
:::::::::::::::::::::::::::::::::::
::                               ::
::   Password Protected Folder   ::
::                               ::
:::::::::::::::::::::::::::::::::::
:: Made By: 1k0de                ::

::Code Start Here
@echo off
title Unlock Secret Folder ^| 1k0de
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
	set ESC=%%b
)
goto set_colors
goto crash

:set_colors
:: Text Colors
set "DarkWhite=!ESC![90m"
set "Red=!ESC![91m"
set "Green=!ESC![92m"
set "Yellow=!ESC![93m"
set "Blue=!ESC![94m"
set "Purple=!ESC![95m"
set "Cyan=!ESC![96m"
set "White=!ESC![97m"
:: Background Colors
set "b_black=!ESC![100m"
set "b_red=!ESC![101m"
set "b_green=!ESC![102m"
set "b_yellow=!ESC![103;30m"
set "b_blue=!ESC![104m"
set "b_purple=!ESC![105m"
set "b_cyan=!ESC![106m"
set "b_white=!ESC![107m"
::Combinations
set "dark_red=!ESC![31m"
set "white_black=!ESC![7m"
set "red_black=!ESC![7;31m"
::Text Styles
set "reset=!ESC![0m"
set "bold=!ESC![1m"
set "underline=!ESC![4m"
if exist "UnlockedFolder.zip" (
	goto lock_folder
) else (
	goto unlock_folder
)
goto crash

:unlock_folder
cls
echo !reset!!underline!====================================================================!reset!
echo !reset!               !bold!Master Command Prompt: Lock Screen!reset!
echo !reset!!underline!====================================================================!reset!
echo.
set "psCommand=powershell -Command "$pword = read-host 'Enter Password' -AsSecureString ; ^
$BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
[System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set user_inp=%%p
if "!user_inp!" == "_e3e_pi89" (
	echo !reset!Success: !green!Correct Password^^!!reset!
	echo !reset!!white_black![Press Any Key]!reset!
	pause > nul
	goto download_folder
	goto crash
) else (
	echo !reset!Error: !dark_red!Incorrect Password^^!!reset!
	echo !reset!!white_black![Press Any Key]!reset!
	pause > nul
	goto unlock_folder
	goto crash
)
goto crash

:lock_folder
cls
echo !reset!!underline!====================================================================!reset!
echo !reset!               !bold!Master Command Prompt: Lock Screen!reset!
echo !reset!!underline!====================================================================!reset!
echo.
set /p "user_inp_2=Would you like you lock the folder? > "
if "!user_inp_2!" == "y" (
	if exist "UnlockedFolder.zip" (
		del /f UnlockedFolder.zip
	)
	if exist "UnlockedFolder" (
		del /f UnlockedFolder
	)
	pause
	exit
)
if "!user_inp_2!" == "Y" (
	if exist "UnlockedFolder.zip" (
		del /f UnlockedFolder.zip
	)
	if exist "UnlockedFolder" (
		del /f UnlockedFolder
	)
	pause
	exit
)
if "!user_inp_2!" == "n" (
	pause
	exit
)
if "!user_inp_2!" == "N" (
	pause
	exit
)
echo Invalid Input^^!
pause
exit
goto crash

:download_folder
cls
echo Downloading files...
Powershell.exe Invoke-WebRequest -Uri 'DOWNLOAD LINK GOES HERE' -OutFile .\UnlockedFolder.zip
echo Successfully downloaded files...
pause
exit
goto crash

:crash
cls
echo The UnlockFolder.bat App has crashed^^! Please report this^^!
pause
exit
