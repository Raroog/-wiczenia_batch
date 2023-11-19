@echo off
SET /P foldername=Podaj nazwę folderu na dysku Z: 
mkdir Z:\%foldername%

xcopy "C:\Users\student\Downloads\*.pdf" "Z:\%foldername%\" /Y
xcopy "C:\Users\student\Downloads\*.docx" "Z:\%foldername%\" /Y
xcopy "C:\Users\student\Downloads\*.doc" "Z:\%foldername%\" /Y
xcopy "C:\Users\student\Downloads\*.xls" "Z:\%foldername%\" /Y
xcopy "C:\Users\student\Downloads\*.png" "Z:\%foldername%\" /Y

del /Q "C:\Users\student\Downloads\*.*"
echo Wyczyszczono folder Downloads.
pause