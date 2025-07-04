#!/bin/bash
# Envia temperatura aleatória (0,0 a 50,9) com vírgula decimal via MQTT

inteiro=$(( RANDOM % 51 ))
decimal=$(( RANDOM % 10 ))

temperatura="$inteiro.$decimal"

mosquitto_pub -h localhost -t sensor/temperatura -m "{\"temperatura\":\"$temperatura\"}"

echo "Temperatura enviada: $temperatura"
