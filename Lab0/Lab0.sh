#! /bin/bash

#Ejercicio 1

{
    cat /proc/cpuinfo | grep "model name"
} || {
    echo "Error en el ejercicio 1"
}

#Ejercicio 2

{
    cat /proc/cpuinfo | grep "model name" | wc -l
} || {
    echo "Error en el ejercicio 2"
}

#Ejercicio 3

{
    (wget -O - https://www.gutenberg.org/files/11/11-0.txt | sed 's/Alice/Laza/g') > Laza_in_wonderland.txt
} || {
    echo "Error en el ejercicio 3"
}

#Ejercicio 4

{
    sort -n -k5,5 -o weather_cordoba.in weather_cordoba.in && cut -d' ' -f1-3 weather_cordoba.in | head -n 1 && cut -d' ' -f1-3 weather_cordoba.in | tail -n 1
} || {
    echo "Error en el ejercicio 4"
}

#Ejercicio 5

{
    sort -n -k3,3 atpplayers.in
} || {
    echo "Error en el ejercicio 5"
}

#Ejercicio 6

{
    sort -k2,2nr superliga.in | awk '{print $0, $7 - $8}' | sort -k2,2nr -k9,9nr
} || {
    echo "Error en el ejercicio 6"
}

#Ejercicio 7

{
    ip link show | grep ether
} || {
    echo "Error en el ejercicio 7"
}

#Ejercicio 8.a

{
    mkdir "Nombre de la serie" && cd "Nombre de la serie" && for i in {1..10}; do touch "fma_S01E0${i}_es.srt"; done
} || {
    echo "Error en el ejercicio 8.a"
}

#Ejercicio 8.b

{
    for i in {1..10}; do mv "fma_S01E0${i}_es.srt" "fma_S01E0${i}.srt"; done
} || {
    echo "Error en el ejercicio 8.b"
}
