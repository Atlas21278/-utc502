#!/bin/bash

# Liste les utilisateurs connectés, les trie par nom,
# redirige le résultat vers connected_users.log
# et les erreurs éventuelles vers error_users.log
who | awk '{print $1}' | sort -u > connected_users.log 2> error_users.log

# Affiche un message de confirmation
echo "La liste des utilisateurs connectés a été enregistrée dans connected_users.log"
echo "Vérifiez error_users.log pour les éventuelles erreurs"
