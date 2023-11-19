@echo off
setlocal

:: Prośba o podanie ścieżki, gdzie ma zostać zapisany raport
echo Proszę podać ścieżkę, w której ma zostać zapisany raport:
set /p reportPath=

:: Sprawdzanie wolnej przestrzeni dyskowej i zapis do pliku raportSkanu.txt
(
    echo Raport z %DATE% o godzinie %TIME%:
    echo.
    echo Wolna przestrzen dyskowa na dysku C:
    fsutil volume diskfree C:
    echo.
    echo Wolna przestrzen dyskowa na dysku D:
    fsutil volume diskfree D:
    echo.
    echo Wolna przestrzen dyskowa na dysku Z:
    fsutil volume diskfree Z:
    echo.
) > "%reportPath%\raportSkanu.txt"

echo Raport został zapisany.
endlocal