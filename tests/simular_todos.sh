#!/bin/bash

while true; do
  ./testes/simular_distancia.sh &
  sleep 1

  ./testes/simular_presenca.sh &
  sleep 1

  ./testes/simular_temperatura.sh &
  sleep 1
done
