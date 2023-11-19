@echo off
setlocal

:: Zapytaj o ścieżkę i nazwę pierwszego katalogu
echo Proszę podać ścieżkę, w której ma zostać utworzony katalog:
set /p directoryPath=
echo Proszę podać nazwę pierwszego katalogu:
set /p firstDirName=

:: Stwórz pierwszy katalog
set "fullFirstDirPath=%directoryPath%\%firstDirName%"
mkdir "%fullFirstDirPath%"
echo Katalog %firstDirName% został stworzony.

:: Stwórz plik myPlik.txt z tekstem "Hello everybody"
echo Hello everybody > "%fullFirstDirPath%\myPlik.txt"
echo Plik myPlik.txt został stworzony.

:: Zapytaj o nazwę drugiego katalogu
echo Proszę podać nazwę drugiego katalogu:
set /p secondDirName=

:: Stwórz drugi katalog
set "fullSecondDirPath=%directoryPath%\%secondDirName%"
mkdir "%fullSecondDirPath%"
if %ERRORLEVEL% == 0 (
    echo Katalog %secondDirName% został stworzony.
    
    :: Zmień nazwę pliku myPlik.txt na terazMyPlik.txt i dopisz do niego tekst
    ren "%fullFirstDirPath%\myPlik.txt" "terazMyPlik.txt"
    echo Zabrałem ten plik >> "%fullFirstDirPath%\terazMyPlik.txt"
    echo Nazwa pliku została zmieniona na terazMyPlik.txt i zaktualizowano jego treść.
) else (
    echo Nie udało się stworzyć katalogu %secondDirName%.
)

pause
endlocal
