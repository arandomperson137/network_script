@echo off
REM **********************************
REM Programmer: (c) Tiago Pereira
REM Date: 17/10/24
REM: Description: my first batch file
REM ***********************************
:MENU
cls
echo ##########################
echo # network script         #
echo # (c) 2024 Tiago Pereira #
echo ##########################

echo 1- ip config
echo 2- renew ip configs
echo 3- dns
echo 4- show mac
echo 5- energy efficient
echo 6- file app assoc
echo 7- disc repair
echo 8- ping to url
echo 9- user to file
echo 10- exit

set /p opt="select an option:"

if %opt% == 1 goto SHOW_IP
if %opt% == 2 goto RENEW_IP_CONFIGURATIONS
if %opt% == 3 goto DNS
if %opt% == 4 goto Show_Mac
if %opt% == 5 goto energy_efficient
if %opt% == 6 goto FILE_APP_ASSOC
if %opt% == 7 goto Disc Repair
if %opt% == 8 goto PING_TO_URL
if %opt% == 9 goto USER_TO_FILE
if %opt% == 10 goto EXIT_SCRIPT

goto MENU

:SHOW_IP
ipconfig /all
pause 
goto MENU

:RENEW_IP_CONFIGURATIONS
ipconfig /release
ipconfig /renew
pause
goto MENU

:DNS
set /p domain="insert a domain="
set /p dnsserver="insert a dns server="
nslookup %domain% %dnsserver%
pause
cls
goto MENU

:Show_Mac
getmac
pause
goto MENU

:energy_efficient
powercfg /energy
pause
goto MENU

:FILE_APP_ASSOC
assoc > output.txt
pause
goto MENU

:DISK_REPAIR
chkdsk /f /r
pause
goto MENU

:QR_Code
set /p url="insert url: "
ping %url%
pause
goto MENU

:USER_TO_FILE
net user > users.txt
pause
goto MENU

:EXIT_SCRIPT
echo the
exit /b 0