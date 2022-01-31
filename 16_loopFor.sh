#!/bin/bash
#Programa para practicar iteración for

#Autor: Nicolás Rodríguez - @chino.rodgz


numbersArray=(1 2 3 4 5 6)
stringsArray=(Adrián Damian Florencia Estela)


echo "Iterar en la lista de números"
for num in ${numbersArray[*]}
do 
    echo "Número: $num"
done

echo "Iterar en la lista de cadenas"

for name in ${stringsArray[*]}
do
    echo "Nombre: $name"

done


echo "Iterar entre archivos"
for file in *
do
    echo "Nombre del archivo: $file"
done

echo "Iterar utilizando un comando"
for file in $(ls)
do
    echo "Nombre del archivo: $file "
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Número: $i"
done








