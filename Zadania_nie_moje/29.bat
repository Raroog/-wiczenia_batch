@echo off
setlocal

:: Zapytaj użytkownika o adres URL
echo Wprowadz adres URL strony, ktora chcesz otworzyc (musisz wpisać www. na początku):
set /p url=

:: Otwórz podany adres URL w domyślnej przeglądarce
start "" "%url%"

endlocal
