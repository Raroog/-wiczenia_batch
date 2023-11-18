@echo off
setlocal

:: Pobieranie adresu URL od użytkownika
echo Podaj adres URL strony, ktora chcesz otworzyc:
set /p url="URL: "

:: Otwieranie strony w przeglądarce
start "" "%url%"

echo Strona zostala otwarta.
pause
endlocal
