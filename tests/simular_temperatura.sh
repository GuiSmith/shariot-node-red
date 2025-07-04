#!/bin/bash
# Envia temperatura aleatória (0-50) via HTTP POST para /temperatura

temperatura=$(( RANDOM % 51 ))
curl -s --max-time 1 -X POST http://localhost:1880/temperatura \
  -H "Content-Type: application/json" \
  -d "{\"temperatura\": $temperatura}" > /dev/null
echo "Temperatura enviada: $temperatura"
