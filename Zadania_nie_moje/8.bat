@echo off
setlocal

:: Zapytaj użytkownika o ścieżkę katalogu
echo Proszę podać ścieżkę do katalogu, w którym mają być usuwane pliki:
set /p directoryPath="Ścieżka: "

:: Zapytaj użytkownika o datę
echo Proszę podać datę w formacie MM/DD/RRRR (np. 01/31/2023), przed którą utworzone pliki zostaną usunięte:
set /p Date="Data: "

:: Usuwanie plików starszych niż podana data
echo Usuwanie plików starszych niż %Date%...
forfiles /p "%directoryPath%" /s /d -%Date% /c "cmd /c del @path /Q"

echo Operacja zakończona.
pause
endlocal
