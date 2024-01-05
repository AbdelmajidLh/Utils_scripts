@echo off
set /p version="Entrez la version de R à installer (par exemple 4.0.5) : "
set /p architecture="Entrez l'architecture à installer (par exemple x64) : "
set /p repository="Entrez le dépôt à utiliser (par exemple https://cran.rstudio.com/) : "

set url=%repository%/bin/windows/base/R-%version%-%architecture%.exe

echo Téléchargement de R depuis %url%
curl -o R.exe %url%

echo Installation de R...
start /wait R.exe /SILENT /VERYSILENT

echo Nettoyage des fichiers temporaires...
del R.exe