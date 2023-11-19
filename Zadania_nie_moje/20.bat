@echo off
setlocal

:menu
cls
echo.
echo Wybierz program do uruchomienia:
echo [1] Notepad
echo [2] Kalkulator
echo [3] Paint
echo [4] Edytuj listę programów
echo [0] Wyjście
echo.

set /p choice=Wybór:
if "%choice%"=="1" start notepad
if "%choice%"=="2" start calc
if "%choice%"=="3" mspaint
if "%choice%"=="4" notepad "%~0"
if "%choice%"=="0" goto end

goto menu

:end
echo Do widzenia!
pause
endlocal