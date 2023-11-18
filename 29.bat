@echo off
setlocal

:: Pobieranie nazwy pliku od użytkownika
echo Podaj nazwe pliku, do ktorego zapisane zostana aktywne procesy (np. procesy.txt):
set /p fileName="Nazwa pliku: "

:: Przekierowanie listy procesów do pliku
tasklist > "%fileName%"

echo Lista procesow zostala zapisana do pliku %fileName%.
pause
endlocal
