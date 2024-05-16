#!/bin/bash
set -e

# Actualizar el sistema
sudo apt-get update && sudo apt-get upgrade -y

# Instalar wget
sudo apt-get install wget -y

# Descargar el instalador de Jitsi y Jibri
wget -T 10 -O jitsi-jibri-installer https://raw.githubusercontent.com/jitsi-contrib/installers/main/jitsi-jibri/jitsi-jibri-installer

# Establecer variables de entorno
export JITSI_HOST=jitsi.xoftix.com
export TURN_HOST=turn.xoftix.com
export JITSI_IP=10.0.2.15
export DONT_SET_LETSENCRYPT=true

# Dar permisos de ejecución al instalador
bash jitsi-jibri-installer
