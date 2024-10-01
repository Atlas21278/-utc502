#!/bin/bash

# Vérifier si un argument a été fourni
if [ $# -eq 0 ]; then
    echo "Usage: $0 <nom_du_fichier>"
    exit 1
fi

# Récupérer le nom du fichier depuis l'argument
file="$1"

# Vérifier si le fichier existe
if [ ! -e "$file" ]; then
    echo "Le fichier $file n'existe pas."
    exit 1
fi

# Obtenir les permissions du fichier
perms=$(stat -c "%A" "$file")

# Afficher les permissions
echo "Permissions: $perms"

# Vérifier si l'utilisateur a le droit d'exécution
if [ -x "$file" ]; then
    echo "Vous avez les droits d'exécution sur ce fichier."
else
    echo "Vous n'avez pas les droits d'exécution sur ce fichier."
fi
