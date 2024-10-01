#!/bin/bash

# Vérifier si un argument a été fourni
if [ $# -eq 0 ]; then
    echo "Usage: $0 <commande>"
    exit 1
fi

# Exécuter la commande en redirigeant la sortie standard vers output.log
# et la sortie d'erreur vers error.log
$@ > output.log 2> error.log

# Afficher un message de confirmation
echo "Exécution terminée. Vérifiez output.log et error.log pour les résultats."
