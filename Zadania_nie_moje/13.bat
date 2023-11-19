@echo off

:: Ustaw lokalizację A i nazwę pliku
echo Proszę podać ścieżkę do lokalizacji A:
set /p locationA=

:: Utwórz plik w lokalizacji A i napisz do niego "Hello world"
echo Hello world > "%locationA%\stary.txt"
echo Plik %locationA% został utworzony.

:: Ustaw lokalizację B i nazwę nowego pliku
echo Proszę podać ścieżkę do lokalizacji B:
set /p locationB=

:copy
:: Kopiuj zawartość z pliku A do nowego pliku w lokalizacji B
type "%locationA%\stary.txt" >> "%locationB%\nowy.txt%"
echo Zawartość została skopiowana do %newFileName%.

:end
echo Operacja zakończona.
pause
