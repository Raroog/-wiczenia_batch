@echo off
setlocal EnableDelayedExpansion

:main
cls
echo Podaj sciezke do folderu:
set /p folderPath="Sciezka: "
if not exist "!folderPath!" (
    echo Nie znaleziono folderu. Sprobuj ponownie.
    goto main
)

echo.
echo Wybierz operacje dla plikow pakietu Office zaczynajacych sie na 'A':
echo 1. Skopiuj
echo 2. Przenies
echo 3. Skasuj
set /p operation="Wybor: "

set "pattern=^A"
set "officeExtensions=*.docx *.xlsx *.pptx"

for %%F in (%officeExtensions%) do (
    for /R "!folderPath!" %%I in (%%F) do (
        if "%%~nI" == "!pattern!*%%~nI" (
            if "!operation!"=="1" (
                echo Skopiowanie %%I...
                xcopy "%%I" "C:\destination\%%~nxF" /Y
            ) else if "!operation!"=="2" (
                echo Przeniesienie %%I...
                move "%%I" "C:\destination\%%~nxF"
            ) else if "!operation!"=="3" (
                echo Usuniecie %%I...
                del "%%I"
            )
        )
    )
)

echo.
echo Operacja zakonczona.
echo Czy chcesz wykonac operacje dla innego folderu? (T/N)
set /p choice="Wybor: "
if /I "!choice!"=="T" goto main

echo Zamykanie skryptu.
pause
endlocal
