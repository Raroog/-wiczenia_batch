@echo off
setlocal EnableDelayedExpansion

:: Poproś o wprowadzenie listy liczb
echo Wprowadz liste liczb oddzielonych spacjami:
set /p numbers=

:: Zapisz liczby do pliku tymczasowego
set numbers=!numbers: =^

!
echo !numbers! > temp.txt

:: Sortuj liczby malejąco i wyświetl wynik
for /f "delims=" %%i in ('sort /r temp.txt') do (
    set /a num=%%i
    echo !num!
)

:: Usuń plik tymczasowy
del temp.txt
pause
endlocal
