@echo off
setlocal

:: Tworzenie nowego folderu
set "newFolder=Z:\MyFolder"
mkdir "%newFolder%"

:: Kopiowanie plików z folderu Downloads
set "sourceFolder=C:\Users\student\Downloads"
xcopy /s "%sourceFolder%\*.pdf" "%newFolder%\"
xcopy /s "%sourceFolder%\*.docx" "%newFolder%\"
xcopy /s "%sourceFolder%\*.doc" "%newFolder%\"
xcopy /s "%sourceFolder%\*.xls" "%newFolder%\"
xcopy /s "%sourceFolder%\*.png" "%newFolder%\"

:: Czyszczenie folderu źródłowego
del /s /q "%sourceFolder%\*.pdf"
del /s /q "%sourceFolder%\*.docx"
del /s /q "%sourceFolder%\*.doc"
del /s /q "%sourceFolder%\*.xls"
del /s /q "%sourceFolder%\*.png"

echo Operacja zakonczona.
pause
