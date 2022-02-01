#!/bin/bash
#Programa para practicar iteraciónes anidadas

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Loops anidados "

for file in $(ls)
do
    for name in {1..4}
    do
        echo "Nombre archivo: $file _ $name"
    done
done







