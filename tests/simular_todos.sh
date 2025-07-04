#!/bin/bash

while true; do
  ./simular_distancia.sh &
  sleep 1

  ./simular_presenca.sh &
  sleep 1

  ./simular_temperatura.sh &
  sleep 1
done
