@echo off
color 1F

ECHO                   ____
ECHO   ^|   ^|    /\    ^|
ECHO   ^|   ^|   /__\   ^|
ECHO   ^|___^|  /    \  ^|____   

ECHO ..............................
ECHO . PRESS 1, 2, 3 or 5 to EXIT .
ECHO ..............................

ECHO 1 - Windows 10
ECHO 2 - Windows 7 64 bit
ECHO 3 - Windows 7 32 bit 
SET /P M=Type 1, 2, 3 or 5 then press ENTER:
IF %M%==1 GOTO W10
IF %M%==2 GOTO CALC
IF %M%==3 GOTO BOTH
IF %M%==5 GOTO EOF
:W10
ECHO If it works you should get an admin command panel press space when your ready :)
pause
PowerShell.exe -NoProfile -ExecutionPolicy Bypass %temp%\DiskCleanupBypass_direct.ps1
pause
:EOF
exit
