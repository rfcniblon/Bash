# Création du script
## donner les droits 
### chmod +X reboot.sh
## puis autorisé l'utilisateur avec cette commande
### sudo visudo
### votre_utilisateur ALL=(ALL) NOPASSWD: /chemin/vers/votre_script.sh
## puis ajouter un cron pour l 'executer automatiquement 
### sudo crontab -e
### 0 2 * * * /chemin/vers/votre_script.sh
