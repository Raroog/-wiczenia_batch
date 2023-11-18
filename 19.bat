@echo off
setlocal

:mainMenu
cls
echo Wybierz program do uruchomienia:
echo 1 - Notatnik
echo 2 - Kalkulator
echo 3 - Paint
echo 4 - Edytuj liste programow
echo 5 - Wyjscie
set /p choice="Wybor: "

if "%choice%"=="1" start notepad
if "%choice%"=="2" start calc
if "%choice%"=="3" start mspaint
if "%choice%"=="4" goto editMenu
if "%choice%"=="5" goto endScript
goto mainMenu

:editMenu
notepad "%~f0"
goto mainMenu

:endScript
endlocal
