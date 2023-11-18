@echo off
setlocal

:: Pobieranie ścieżki folderu od użytkownika
echo Podaj sciezke do folderu:
set /p folderPath="Sciezka: "

:: Pobieranie nazwy użytkownika, dla którego mają być sprawdzone uprawnienia
echo Podaj nazwe uzytkownika:
set /p userName="Uzytkownik: "

:: Wyświetlenie uprawnień dla plików i katalogów
echo Uprawnienia dla plikow i katalogow w folderze %folderPath% dla uzytkownika %userName%:
icacls "%folderPath%" /find "%userName%"

echo.
echo Uprawnienia zostaly wylistowane powyzej.
pause
endlocal
