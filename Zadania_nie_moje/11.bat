

echo Prosze podac sciezke do folderu:
set /p folderPath="Sciezka: "

echo Prosze podac nazwę pliku:
set /p fileName="Plik: "
:: Sprawdź, czy plik istnieje
if exist "%folderPath%\%fileName%" (
    echo Plik istnieje.
) else (
    echo Plik nie istnieje.
)

Pause