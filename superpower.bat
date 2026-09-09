@echo off
title Windows Technician Toolkit
color a


:MENU
cls
echo======================================================================================================================
echo					 Made  BY DEVELOP IT WOULD 						  j@ck
echo======================================================================================================================
echo.
echo.
echo ==================================================
echo           WINDOWS TECHNICIAN TOOLKIT
echo ==================================================
echo.
echo  [ WINDOWS TOOLS ]
echo.
echo  1.  CMD
echo  2.  PowerShell
echo  3.  Registry Editor
echo  4.  Services
echo  5.  Event Viewer
echo  6.  Local Users
echo  7.  Group Policy
echo  8.  Computer Management
echo  9.  System Restore
echo  10. Recovery Settings
echo  11. Windows Security
echo.
echo  [ CMD DIAGNOSTIC TOOLS ]
echo.
echo  12. IP Configuration
echo  13. Internet Connectivity
echo  14. Network Route
echo  15. Windows System File Check
echo  16. Windows Version
echo  17. Refresh pc
echo.
echo  [ WINDOWS SHORTCUTS ]
echo.
echo  18. Recent Files
echo  19. Check Wi-Fi  Password 
echo  20. Delete Cache File
echo  21. Show all Storage File
echo  22. Check Battery Report 
echo.
echo  [CMD FUN COMMAND]
echo.
echo  23. parrot Dance
echo  24. Man Dance
echo  25. Running  Man
echo.
echo  26. Exit
echo.
echo ==================================================
set /p choice=Enter your choice: 


:: WINDOWS TOOLS

if "%choice%"=="1" goto CMD
if "%choice%"=="2" goto POWERSHELL
if "%choice%"=="3" goto REGISTRY
if "%choice%"=="4" goto SERVICES
if "%choice%"=="5" goto EVENT
if "%choice%"=="6" goto USERS
if "%choice%"=="7" goto GPEDIT
if "%choice%"=="8" goto COMPUTER
if "%choice%"=="9" goto RESTORE
if "%choice%"=="10" goto RECOVERY
if "%choice%"=="11" goto SECURITY


:: CMD DIAGNOSTIC TOOLS

if "%choice%"=="12" goto IPCONFIG
if "%choice%"=="13" goto PING
if "%choice%"=="14" goto TRACERT
if "%choice%"=="15" goto SFC
if "%choice%"=="16" goto VERSION
if "%choice%"=="17" goto tree

:: WINDOWS SHORTCUTS

if "%choice%"=="18" goto RECENT
If "%choice%"=="19" goto  pass
If "%choice%"=="20" goto  temp
If "%choice%"=="21" goto  tempf
If "%choice%"=="22" goto  battery

::TIME PASS FUN COMMAND
If "%choice%"=="23" goto  parrot
If "%choice%"=="24" goto  man
If "%choice%"=="25" goto  run






:: EXIT

if "%choice%"=="26" exit

echo.
echo Invalid option!
pause
goto MENU


:: ==================================================
:: 1. CMD
:: ==================================================

:CMD
start cmd
goto MENU


:: ==================================================
:: 2. POWERSHELL
:: ==================================================

:POWERSHELL
start powershell
goto MENU


:: ==================================================
:: 3. REGISTRY EDITOR
:: ==================================================

:REGISTRY
cls
echo ==========================================
echo          REGISTRY EDITOR
echo ==========================================
echo.
echo WARNING:
echo Incorrect Registry changes can affect Windows.
echo.
choice /C YN /M "Open Registry Editor?"
if errorlevel 2 goto MENU

start regedit
goto MENU


:: ==================================================
:: 4. SERVICES
:: ==================================================

:SERVICES
cls
echo ==========================================
echo              SERVICES
echo ==========================================
echo.
echo WARNING:
echo Do not disable important Windows services.
echo.
choice /C YN /M "Open Services?"
if errorlevel 2 goto MENU

start services.msc
goto MENU


:: ==================================================
:: 5. EVENT VIEWER
:: ==================================================

:EVENT
start eventvwr.msc
goto MENU


:: ==================================================
:: 6. LOCAL USERS
:: ==================================================

:USERS
start lusrmgr.msc
goto MENU


:: ==================================================
:: 7. GROUP POLICY
:: ==================================================

:GPEDIT
cls
echo ==========================================
echo            GROUP POLICY
echo ==========================================
echo.
echo WARNING:
echo Incorrect policies can affect Windows.
echo.
choice /C YN /M "Open Group Policy Editor?"
if errorlevel 2 goto MENU

start gpedit.msc
goto MENU


:: ==================================================
:: 8. COMPUTER MANAGEMENT
:: ==================================================

:COMPUTER
cls
echo ==========================================
echo          COMPUTER MANAGEMENT
echo ==========================================
echo.
echo WARNING:
echo Be careful with Disk Management.
echo.
choice /C YN /M "Open Computer Management?"
if errorlevel 2 goto MENU

start compmgmt.msc
goto MENU


:: ==================================================
:: 9. SYSTEM RESTORE
:: ==================================================

:RESTORE
start rstrui.exe
goto MENU


:: ==================================================
:: 10. RECOVERY SETTINGS
:: ==================================================

:RECOVERY
start ms-settings:recovery
goto MENU


:: ==================================================
:: 11. WINDOWS SECURITY
:: ==================================================

:SECURITY
start windowsdefender:
goto MENU


:: ==================================================
:: 12. IP CONFIGURATION
:: ==================================================

:IPCONFIG
cls
echo ==========================================
echo          IP CONFIGURATION
echo ==========================================
echo.

ipconfig /all

echo.
pause
goto MENU


:: ==================================================
:: 13. INTERNET CONNECTIVITY
:: ==================================================

:PING
cls
echo ==========================================
echo        INTERNET CONNECTIVITY
echo ==========================================
echo.
echo Testing connection to 8.8.8.8...
echo.

ping 8.8.8.8

echo.
pause
goto MENU


:: ==================================================
:: 14. NETWORK ROUTE
:: ==================================================

:TRACERT
cls
echo ==========================================
echo             NETWORK ROUTE
echo ==========================================
echo.
echo Tracing route to 8.8.8.8...
echo.

tracert 8.8.8.8

echo.
pause
goto MENU


:: ==================================================
:: 15. WINDOWS SYSTEM FILE CHECK
:: ==================================================

:SFC
cls
echo ==========================================
echo       WINDOWS SYSTEM FILE CHECK
echo ==========================================
echo.
echo This will VERIFY system files.
echo It will NOT repair them.
echo.

sfc /verifyonly

echo.
pause
goto MENU


:: ==================================================
:: 16. WINDOWS VERSION
:: ==================================================

:VERSION
cls
echo ==========================================
echo           WINDOWS VERSION
echo ==========================================
echo.

ver

echo.
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"

echo.
pause
goto MENU


:: ==================================================
:: 18. RECENT FILES
:: ==================================================

:RECENT
cls
echo ==========================================
echo              RECENT FILES
echo ==========================================
echo.
echo Opening Windows Recent Items...

explorer.exe shell:recent

echo.
pause
goto MENU


:=====================================
: 17.Refresh pc
:=====================================

:tree
cls
echo================================
echo 		Refresh full PC 
echo================================
echo.
tree
echo.
pause
goto MENU
:==================================
: 19.Show Wi-Fi password
:==================================
:PASS
cls
echo ================================
echo        Past Connected Wi-Fi
echo ================================
echo.

netsh wlan show profiles

echo.
set /p "wifi=Enter Wi-Fi Name: "

echo.
netsh wlan show profile name="%wifi%" key=clear

echo.
pause
goto MENU

:=====================================
: 20.Delete  tempery flie
:=====================================

:temp
cls
echo ================================
echo       Delete Temporary Files
echo ================================
echo.

echo Deleting temporary files...
echo.

del /q /f /s "%TEMP%\*" >nul 2>&1
for /d %%D in ("%TEMP%\*") do rd /s /q "%%D" >nul 2>&1

echo.
echo Temporary files cleanup completed.
echo.
pause
goto MENU
:=====================================
: 21.show tempery flie
:=====================================

:tempf
cls
echo================================
echo          Show tempery flie
echo================================
echo.
explorer "%TEMP%"
echo.
pause
goto MENU


:=====================================
: 22.Battery  Health 
:=====================================
:battery
cls
echo ================================
echo          Battery Health
echo ================================
echo.
echo 1. Show Battery Health in CMD
echo 2. Open Full Battery Report in Chrome
echo 3. Back to Main Menu
echo.

set /p "bchoice=Enter your choice: "

if "%bchoice%"=="1" goto BATTERY_CMD
if "%bchoice%"=="2" goto BATTERY_CHROME
if "%bchoice%"=="3" goto MENU

echo.
echo Invalid choice!
pause
goto battery


:BATTERY_CMD
cls
echo ================================
echo       Battery Health - CMD
echo ================================
echo.

set "REPORT=%TEMP%\battery-report.html"

echo Generating Battery Report...
powercfg /batteryreport /output "%REPORT%" >nul 2>&1

if not exist "%REPORT%" (
    echo.
    echo ERROR: Battery report could not be generated.
    pause
    goto battery
)

echo Battery Report Generated.
echo.
echo Reading Battery Information...
echo.

powershell -NoProfile -Command "$html=Get-Content -Raw '%REPORT%'; $design=[regex]::Match($html,'DESIGN CAPACITY.*?([0-9,]+)\s*mWh','Singleline').Groups[1].Value; $full=[regex]::Match($html,'FULL CHARGE CAPACITY.*?([0-9,]+)\s*mWh','Singleline').Groups[1].Value; if($design -and $full){$design=$design.Replace(',','');$full=$full.Replace(',','');$health=([double]$full/[double]$design)*100; Write-Host ('DESIGN CAPACITY       = ' + $design + ' mWh'); Write-Host ('FULL CHARGE CAPACITY  = ' + $full + ' mWh'); Write-Host ('Battery Health        = {0:N2}%%' -f $health)}else{Write-Host 'Could not read battery capacity values from the report.'}"

echo.
pause
goto BATTERY


:BATTERY_CHROME
cls
echo ================================
echo      Full Battery Report
echo ================================
echo.

set "REPORT=%TEMP%\battery-report.html"

echo Generating Full Battery Report...
powercfg /batteryreport /output "%REPORT%" >nul 2>&1

if not exist "%REPORT%" (
    echo.
    echo ERROR: Battery report could not be generated.
    pause
    goto battery
)

echo.
echo Battery Report Generated Successfully.
echo.
echo Opening Full Report in Default Browser...
echo.

start "" "%REPORT%"

echo.
pause
goto battery

:=====================================
: 23.	Parrot Dance
:=====================================
:parrot
cls
echo================================
echo 		Parrot Dance
echo================================
echo.
curl parrot.live
echo.
pause
goto MENU

:=====================================
: 24.	Man Dance
:=====================================
:man
cls
echo================================
echo 		Man Dance
echo================================
echo.
curl ascii.live/rick
echo.
pause
goto MENU

:=====================================
: 25.	Runing man
:=====================================
:run
cls
echo================================
echo 	     Runing Man
echo================================
echo.
curl ascii.live/forrest
echo.
pause
goto MENU


:: ==================================================
:: END
:: ==================================================
