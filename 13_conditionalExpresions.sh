#!/bin/bash
# Programa para practicar expresiones condicionales 
#Autor Nicolás Rodríguez @chino.rodgz


edad=0
pais=""
archivePath=""

read -p "Ingrese su edad: " age

read -p "Ingrese su País: " country
read -p "Ingrese el path de su archivo: " archivePath

echo -e "\nExpresiones condicionales con números"

if [ $age -lt 10 ];then
    echo "La persona es niñe"
elif [ $age -ge 10 ] && [ $age -le 17 ]; then

    echo "La persona es adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones condicionales con cadenas"

if [ $country = "EEUU" ];then
    echo "La persona es norteamericana"
elif [ $country = "Ecuador" ] || [ $country == "Colombia" ]; then

    echo "La persona es Sudamericana"
else
    echo "Se desconoce su nacionalidad"
fi


echo -e "\nExpresiones condicionales con archivos"
#Con -d verificamos si existe un archivo
if [ -d $archivePath ];then
    echo "El directorio $archivePath existe"
else
    echo "El directorio $archivePath no existe"
fi



