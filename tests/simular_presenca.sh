#!/bin/bash
# Envia presença aleatória (0 ou 1) via MQTT para o tópico sensor/ir

presenca=$(( RANDOM % 2 ))
mosquitto_pub -h localhost -t "sensor/ir" -m "{\"presenca\": $presenca}"
echo "Presença enviada: $presenca"
