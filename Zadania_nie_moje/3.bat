@echo off
:begin
cls
echo Prosze podac sciezke do folderu:
set /p folderPath="Sciezka: "
echo.
echo Wybrano sciezke: %folderPath%
echo.
echo Wybierz operacje do wykonania na plikach pakietu Office zaczynajacych sie na wielka litere A:
echo [1] Skopiuj
echo [2] Przenies
echo [3] Skasuj
echo.

set /p choice="Wybor (1-3): "
echo.

if "%choice%"=="1" goto copyFiles
if "%choice%"=="2" goto moveFiles
if "%choice%"=="3" goto deleteFiles

echo Nieprawidlowy wybor.
pause
goto begin

:copyFiles
echo Skopiowanie plikow...
for %%f in ("%folderPath%\A*.docx" "%folderPath%\A*.xlsx" "%folderPath%\A*.pptx") do (
    copy "%%f" "%folderPath%\Copy_%%~nxf"
)
echo Zadanie zakonczone.
goto summary

:moveFiles
echo Przenoszenie plikow...
for %%f in ("%folderPath%\A*.docx" "%folderPath%\A*.xlsx" "%folderPath%\A*.pptx") do (
    move "%%f" "%folderPath%\Move_%%~nxf"
)
echo Zadanie zakonczone.
goto summary

:deleteFiles
echo Kasowanie plikow...
for %%f in ("%folderPath%\A*.docx" "%folderPath%\A*.xlsx" "%folderPath%\A*.pptx") do (
    del "%%f"
)
echo Zadanie zakonczone.
goto summary

:summary
echo.
echo Podsumowanie operacji:
echo Wybrana sciezka: %folderPath%
echo Wybrana operacja: %choice%
echo.
set /p decision="Czy chcesz wykonac operacje dla innego folderu? (T/N): "
if /i "%decision%"=="T" goto begin
if /i "%decision%"=="N" goto end

echo Nieprawidlowy wybor.
goto summary

:end
echo Koniec pracy skryptu.
pause
