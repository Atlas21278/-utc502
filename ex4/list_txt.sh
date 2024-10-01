files=$(find . -maxdepth 1 -type f -name "*.txt")

if [ -n "$files" ]; then
    echo "Fichiers .txt trouvés :"
    echo "$files"
else
    echo "Aucun fichier .txt trouvé"
fi

