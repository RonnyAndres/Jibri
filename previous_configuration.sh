#!/bin/bash
set -e

# Actualizar el sistema
sudo apt-get update && sudo apt-get upgrade -y

# Instalar wget
sudo apt-get install wget -y

# Abrir puertos en el firewall
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 10000/udp
sudo ufw reload

# Descargar el instalador de Jitsi y Jibri
wget -T 10 -O jitsi-jibri-installer https://raw.githubusercontent.com/jitsi-contrib/installers/main/jitsi-jibri-installer

# Establecer variables de entorno
export JITSI_HOST=www.zeroebs.com
export TURN_HOST=turn.zeroebs.com
export JITSI_IP=localhost
export DONT_SET_LETSENCRYPT=false

# Dar permisos de ejecución al instalador
bash jitsi-jibri-installer
