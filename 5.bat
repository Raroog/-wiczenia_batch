@echo off
setlocal

:: Tworzenie pierwszego katalogu
echo Podaj sciezke dla pierwszego katalogu:
set /p firstFolderPath="Sciezka: "
mkdir "%firstFolderPath%"

:: Tworzenie pliku "myPlik.txt" w pierwszym katalogu
set "filePath=%firstFolderPath%\myPlik.txt"
echo Hello everybody > "%filePath%"

:: Tworzenie drugiego katalogu
echo Podaj sciezke dla drugiego katalogu:
set /p secondFolderPath="Sciezka: "
mkdir "%secondFolderPath%"

:: Zmiana nazwy i edycja pliku "myPlik.txt"
set "newFilePath=%firstFolderPath%\terazMyPlik.txt"
ren "%filePath%" "terazMyPlik.txt"
echo Zabralem ten plik >> "%newFilePath%"

echo Operacja zakonczona.
pause
endlocal
