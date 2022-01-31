#!/bin/bash
# Programa para practicar Ifs anidados. 
#Autor Nicolás Rodríguez @chino.rodgz

read -n1 -p "Indique la nota del alumno (0-10)" qualification
echo -e "\n"
if [ $qualification -ge 7 ];then
    echo "El alumno aprueba la materia"
    read -p "¿Seguirá estudiando en el siguiente nivel? (s/n)" answer

    if [ $answer = "s" ];then

        echo "Bienvenido al siguiente nivel"
    elif [ $answer = "n" ];then
        echo "Gracias por asistir hasta aquí"
    fi
fi




