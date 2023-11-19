@echo off
setlocal

echo Sortowanie alfabetyczne plikow:
dir /b /o:n
echo.

echo Sortowanie plikow po dacie utworzenia:
dir /b /o:d /t:c
echo.

echo Sortowanie plikow wedlug wielkosci:
dir /b /o:s
echo.

pause
endlocal
