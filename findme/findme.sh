#!/bin/bash

echo "$(date): Recherche de FindMe.txt..."

FICHIERS_TROUVES=$(find /home -name FindMe.txt 2>/dev/null)

if [ -z "$FICHIERS_TROUVES" ]; then
    echo "$(date): Aucun fichier trouvé. Redémarrage dans 1 minute."
else
    echo "$(date): Fichiers trouvés :"
    echo "$FICHIERS_TROUVES"
    echo "$(date): Suppression des fichiers..."
    find /home -name FindMe.txt -delete
    echo "$(date): Fichiers supprimés. Redémarrage dans 1 minute."