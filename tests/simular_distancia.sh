#!/bin/bash
# Envia distância aleatória (0-400) via HTTP POST para /distancia

distancia=$(( RANDOM % 401 ))
curl -s --max-time 1 -X POST http://localhost:1880/distancia \
  -H "Content-Type: application/json" \
  -d "{\"distancia\": $distancia}" > /dev/null
echo "Distância enviada: $distancia"
