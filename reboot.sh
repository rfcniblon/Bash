#!/bin/bash

# Redémarre la machine virtuelle
sudo shutdown -r now

# Attend que la machine virtuelle soit complètement arrêtée
sleep 60

# Exécute l'application
cd /chemin/vers/application
sudo pm2 start server.js
