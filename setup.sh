#!/bin/bash
# Instala pacotes necessários pro SharkIOT

sudo apt update
sudo apt install -y nodejs npm mosquitto mosquitto-clients curl
sudo systemctl enable mosquitto
sudo systemctl start mosquitto
sudo systemctl status mosquitto
