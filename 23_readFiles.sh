#!/bin/bash
#Programa para leer un archivo

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Leyendo en archivo "

echo "Forma directa con cat"
cat $1

echo -e "\nForma indirecta, almacenando los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"


#Utilizamos IFS (Internal Field Separator)
#para evitar que los espacios de sangría se recorten

echo -e "\nLeer archivos linea por linea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1


