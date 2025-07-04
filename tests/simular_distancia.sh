#!/bin/bash
# Envia distância aleatória (0 a 400) via MQTT

distancia=$(( RANDOM % 401 ))

mosquitto_pub -h localhost -t sensor/distancia -m "{\"distancia\": $distancia}"

echo "Distância enviada: $distancia"
