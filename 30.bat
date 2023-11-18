@echo off
setlocal EnableDelayedExpansion

set "tempFile=temp_numbers.txt"
set "sortedFile=sorted_numbers.txt"

:: Czyszczenie zawartości plików tymczasowych, jeśli istnieją
if exist "%tempFile%" del "%tempFile%"
if exist "%sortedFile%" del "%sortedFile%"

:collectNumbers
cls
echo Wpisz liczbe (lub wpisz 'koniec', aby zakonczyc):
set /p number="Liczba: "
if /I "!number!"=="koniec" goto sortNumbers
echo !number! >> "%tempFile%"
goto collectNumbers

:sortNumbers
:: Sortowanie liczb w kolejności malejącej
for /F "delims=" %%a in ('type "%tempFile%" ^| sort /R') do echo %%a >> "%sortedFile%"

echo Posortowane liczby (malejaco):
type "%sortedFile%"
pause

:: Opcjonalne: Usuwanie plików tymczasowych
del "%tempFile%"
del "%sortedFile%"

endlocal
