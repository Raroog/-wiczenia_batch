@echo off
setlocal

:mainMenu
cls
echo Wybierz adres do sprawdzenia:
echo 1 - Google DNS (8.8.8.8)
echo 2 - Cloudflare DNS (1.1.1.1)
echo 3 - OpenDNS (208.67.222.222)
echo 4 - Wyjscie
set /p choice="Wybor: "

if "%choice%"=="1" set "ipAddress=8.8.8.8"
if "%choice%"=="2" set "ipAddress=1.1.1.1"
if "%choice%"=="3" set "ipAddress=208.67.222.222"
if "%choice%"=="4" goto endScript
if not defined ipAddress goto mainMenu

:: Pingowanie wybranego adresu
echo Pingowanie %ipAddress%...
ping %ipAddress%

:: Zapisywanie wyniku do pliku
echo.
echo Czy zapisac wynik do pliku? (T/N)
set /p saveResult="Wybor: "
if /I "%saveResult%"=="T" (
    echo Zapisywanie wyniku do pliku...
    ping %ipAddress% > "ping_result_%ipAddress%.txt"
    echo Wynik zapisany w pliku "ping_result_%ipAddress%.txt"
)

pause
goto mainMenu

:endScript
endlocal
