#!/bin/bash

# Repertoire de destination
destination="repo/"

tables=("tab1" "tab2" "tab3")

# boucle pour deplacer les fichiers
for table in "${tables[@]}"
do
  # construire le nom du fichier
  file="create_table_projet_$table.hql"

  # verifier si le fichier existe avant de deplacer
  if [ -e "$file" ]
  then
    mv "$file" "$destination"
  else
    echo "Fichier $file n'existe pas."
  fi
done
