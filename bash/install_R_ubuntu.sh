#!/bin/bash

# Ajouter le dépôt CRAN à la liste des sources
echo "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/" | sudo tee -a /etc/apt/sources.list

# Ajouter la clé GPG du dépôt CRAN
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

# Mettre à jour la liste des paquets
sudo apt update

# Installer R
sudo apt install r-base

# Installer les paquets de développement recommandés pour R
sudo apt install r-base-dev

echo "END"