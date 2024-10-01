
# ✨ **FindMe Service** ✨

Bienvenue dans le **FindMe Service**, une solution simple et efficace pour **rechercher** et **supprimer** les fichiers `FindMe.txt` dans les répertoires des utilisateurs.

## 🚀 **Installation du Service**

Suivez les étapes ci-dessous pour installer et configurer le service **FindMe**.

<details>
<summary><strong>1️⃣ Copie et préparation du fichier <code>findme.sh</code></strong></summary>

Copiez le fichier `findme.sh` dans le répertoire `/usr/local/bin/` et rendez-le **exécutable** avec les commandes suivantes :

```bash
sudo cp findme.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/findme.sh
```

</details>

<details>
<summary><strong>2️⃣ Ajout du service <code>findme.service</code></strong></summary>

Placez le fichier `findme.service` dans `/etc/systemd/system/` pour l'ajouter comme service système :

```bash
sudo cp findme.service /etc/systemd/system/
```

</details>

<details>
<summary><strong>3️⃣ Recharger systemd pour activer le service</strong></summary>

Après avoir ajouté le fichier du service, rechargez **systemd** pour qu’il prenne en compte les nouveaux services :

```bash
sudo systemctl daemon-reload
```

</details>

<details>
<summary><strong>4️⃣ Activer le service pour démarrer au boot</strong></summary>

Activez le service FindMe pour qu'il démarre automatiquement au prochain démarrage :

```bash
sudo systemctl enable findme.service
```

</details>

<details>
<summary><strong>5️⃣ Démarrer le service</strong></summary>

Lancez le service immédiatement pour commencer à rechercher et supprimer les fichiers FindMe.txt :

```bash
sudo systemctl start findme.service
```

</details>

---

## 🔎 **Vérification du Service**

Une fois le service installé, vous pouvez facilement vérifier son état et consulter les logs.

<details>
<summary><strong>Voir l'état du service</strong></summary>

Pour obtenir des informations sur l’état actuel du service, utilisez cette commande :

```bash
sudo systemctl status findme.service
```

</details>

<details>
<summary><strong>Voir les logs du service</strong></summary>

Si vous souhaitez consulter les journaux en temps réel et vérifier l'activité du service :

```bash
journalctl -u findme.service -f
```

</details>

---

## 🎨 **Astuces supplémentaires** 🌟

Voici quelques astuces bonus pour tirer le meilleur parti du service **FindMe** :

- Utilisez `systemctl list-units --type=service` pour voir tous les services actifs.
- Créez des fichiers `FindMe.txt` de test pour voir si le service fonctionne correctement.
- Pour arrêter temporairement le service, utilisez `sudo systemctl stop findme.service`.

---

