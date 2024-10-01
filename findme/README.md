# FindMe Service

Ce service recherche et supprime les fichiers nommés FindMe.txt dans les répertoires /home des utilisateurs.

## Installation

1. Copiez le fichier `findme.sh` dans `/usr/local/bin/` et rendez-le exécutable:
   sudo cp findme.sh /usr/local/bin/
   sudo chmod +x /usr/local/bin/findme.sh

2. Copiez le fichier `findme.service` dans `/etc/systemd/system/`:
   sudo cp findme.service /etc/systemd/system/

3. Rechargez le daemon systemd:
   sudo systemctl daemon-reload

4. Activez le service pour qu'il démarre au boot:
   sudo systemctl enable findme.service

5. Démarrez le service:
   sudo systemctl start findme.service

## Vérification

Pour vérifier l'état du service:
sudo systemctl status findme.service

Pour voir les logs du service:
journalctl -u findme.service -f