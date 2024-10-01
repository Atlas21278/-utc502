#!/bin/bash

# Vérifier si un argument a été fourni
if [ $# -eq 0 ]; then
    echo "Usage: $0 <nom_du_fichier>"
    exit 1
fi

# Vérifier si le fichier existe
if [ ! -e "$1" ]; then
    echo "Le fichier $1 n'existe pas."
    exit 1
fi

# Vérifier les permissions de lecture
if [ -r "$1" ]; then
    echo "Vous avez les droits de lecture."
else
    echo "Vous n'avez pas les droits de lecture."
fi

# Vérifier les permissions d'écriture
if [ -w "$1" ]; then
    echo "Vous avez les droits d'écriture."
else
    echo "Vous n'avez pas les droits d'écriture."
fi

# Vérifier les permissions d'exécution
if [ -x "$1" ]; then
    echo "Vous avez les droits d'exécution."
else
    echo "Vous n'avez pas les droits d'exécution."
fi
