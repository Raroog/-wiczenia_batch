@echo off
setlocal

:menu
cls
echo Wybierz adres do przetestowania:
echo [1] Google (8.8.8.8)
echo [2] Cloudflare (1.1.1.1)
echo [3] OpenDNS (208.67.222.222)
echo [4] Zapisz wynik ostatniego testu do pliku
echo [0] Wyjście
echo.

set /p choice="Wybierz opcję: "

if "%choice%"=="1" set address=8.8.8.8
if "%choice%"=="2" set address=1.1.1.1
if "%choice%"=="3" set address=208.67.222.222
if "%choice%"=="4" goto save
if "%choice%"=="0" goto end
if not defined address goto menu

echo Testowanie połączenia z %address%...
ping %address% -n 4
set lastResult=%address%
goto menu

:save
if not defined lastResult (
    echo Nie wykonano jeszcze żadnego testu.
    pause
    goto menu
)

set /p fileName="Podaj nazwę pliku do zapisu (bez rozszerzenia): "
ping %lastResult% -n 4 > "%fileName%.txt"
echo Wynik zapisany do pliku %fileName%.txt.
pause
goto menu

:end
echo Do widzenia!
endlocal
