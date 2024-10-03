#!/bin/bash

function ctrl_c(){
  echo -e "\n\n[!] Saliendo...\n"
  tput cnorm; exit 1
}

# Ctrl+C
trap ctrl_c INT

# Envío una cadena vacía a la ruta: /dev/tcp/127.0.0.1/ y voy iterando por c/u de los puertos.
# Esto me brinda un código de estado, 0 exitoso | 1 no exitoso. 
tput civis
for port in $(seq 1 65535); do
  (echo '' > /dev/tcp/127.0.0.1/$port) 2>/dev/null && echo "[+] $port - OPEN" &
done; wait
tput cnorm
