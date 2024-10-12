#!/bin/bash

function ctrl_c(){
  echo -e "\n\n[!] Saliendo...\n"
  exit 1
}

# Ctrl+C
trap ctrl_c INT

# Realiza un ping iterando la secuencia indicada obteniendo codigo de estado.
# Tiempo máximo de espera 1 segundo.
tput civis
for i in $(seq 1 254); do
  timeout 1 bash -c "ping -c 1 192.168.1.$i &>/dev/null" && echo "[+] Host 192.168.1.$i - ACTIVE" & # Hilos
done; wait
tput cnorm
