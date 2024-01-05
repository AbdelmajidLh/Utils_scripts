# Définir la liste des packages à vérifier
liste_packages <- c("dplyr", "ggplot2")

# Parcourir la liste avec une boucle for
for (nom_package in liste_packages) {
  # Vérifier si le package est installé
  if (nom_package %in% installed.packages()[, "Package"]) {
    # Si oui, l'importer avec la fonction library
    library(nom_package, character.only = TRUE)
    # Afficher un message de confirmation
    cat(paste0("Le package ", nom_package, " est importé.\n"))
  } else {
    # Sinon, l'installer avec la fonction install.packages
    install.packages(nom_package)
    # L'importer avec la fonction library
    library(nom_package, character.only = TRUE)
    # Afficher un message de confirmation
    cat(paste0("Le package ", nom_package, " est installé et importé.\n"))
  }
}
