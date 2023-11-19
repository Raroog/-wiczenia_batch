@echo off

:: Prośba o podanie ścieżki, gdzie mają zostać utworzone foldery
echo Proszę podać ścieżkę, w której mają zostać utworzone foldery:
set /p directoryPath=

:: Tworzenie folderów
echo Tworzenie folderów...
mkdir "%directoryPath%\TXT"
mkdir "%directoryPath%\BAT"
mkdir "%directoryPath%\ZIP"
mkdir "%directoryPath%\RAR"
mkdir "%directoryPath%\DOC"
mkdir "%directoryPath%\XLS"
mkdir "%directoryPath%\PIC"
echo Foldery zostały utworzone.

:: Pytanie o rodzaj operacji
echo Wybierz operację do wykonania:
echo [1] Kopiowanie
echo [2] Przenoszenie
set /p operation="Wybor (1-2): "

:: Definicja ścieżki do folderu Downloads
set downloadsPath=C:\Users\%username%\Downloads

:: Operacje kopiowania lub przenoszenia plików
if "%operation%"=="1" goto copyOperation
if "%operation%"=="2" goto moveOperation
echo Nieprawidlowy wybor.
goto end

:copyOperation
echo Wykonuje kopie plików...
for %%x in (txt, bat, zip, rar, doc, xls, png, jpg, jpeg) do (
    xcopy "%downloadsPath%\*.%%x" "%directoryPath%\%%~nX\"
)
echo Czy usunąć pliki źródłowe po skopiowaniu? (T/N)
set /p deleteSource="Wybor: "
if /i "%deleteSource%"=="T" (
    echo Usuwanie plików źródłowych...
    for %%x in (txt, bat, zip, rar, doc, xls, png, jpg, jpeg) do (
        del "%downloadsPath%\*.%%x"
    )
)
goto end

:moveOperation
echo Wykonuje przenoszenie plików...
for %%x in (txt, bat, zip, rar, doc, xls, png, jpg, jpeg) do (
    move "%downloadsPath%\*.%%x" "%directoryPath%\%%~nX\"
)
goto end

:end
echo Operacja zakończona.
pause
