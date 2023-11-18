@echo off
setlocal

:: Ustalenie lokalizacji głównej
echo Podaj sciezke do utworzenia folderow:
set /p mainPath="Sciezka: "
if not exist "%mainPath%" (
    echo Sciezka nie istnieje. Sprobuj ponownie.
    exit /b
)

:: Tworzenie folderów
for %%d in (TXT BAT ZIP RAR DOC XLS PIC) do (
    mkdir "%mainPath%\%%d"
)

:: Ustalenie ścieżki folderu Downloads
set "downloadsFolder=C:\Users\student\Downloads"

:: Definiowanie rozszerzeń plików i ich folderów docelowych
set extensions[TXT]=*.txt
set extensions[BAT]=*.bat
set extensions[ZIP]=*.zip
set extensions[RAR]=*.rar
set extensions[DOC]=*.docx
set extensions[XLS]=*.xlsx
set extensions[PIC]=*.jpg *.png *.jpeg

:: Wykonanie operacji kopiowania/przenoszenia
echo Wybierz operacje: 1 - Kopiuj, 2 - Przenies
set /p operation="Wybor: "

for %%d in (TXT BAT ZIP RAR DOC XLS PIC) do (
    for %%e in (!extensions[%%d]!) do (
        if exist "%downloadsFolder%\%%e" (
            if "!operation!"=="1" (
                xcopy "%downloadsFolder%\%%e" "%mainPath%\%%d\"
                echo Czy skasowac plik zrodlowy po skopiowaniu? (T/N)
                set /p delete="Wybor: "
                if /I "!delete!"=="T" del "%downloadsFolder%\%%e"
            ) else if "!operation!"=="2" (
                move "%downloadsFolder%\%%e" "%mainPath%\%%d\"
            )
        )
    )
)

echo Operacja zakonczona.
pause
endlocal
