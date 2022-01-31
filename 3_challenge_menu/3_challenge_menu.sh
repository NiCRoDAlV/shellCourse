# !/bin/bash

#Programa para ejempificar un menú.  

#Autor:  Nicolás Rodríguez @chino.rodgz


echo "Por favor ingrese un número según corresponda: "
echo "----------------------(1) Crear un archivo ------------------------------"
echo "----------------------(2) Multiplicar -----------------------------------"
echo "----------------------(3) Quiz ------------------------------------------"
echo "----------------------(4) Validación de usuario -------------------------"
echo "----------------------(5) Salir -----------------------------------------"

read -p "Opción: " option


clear
case "$option" in

1)
    
    echo "Ingrese el nombre del archivo "
    read -p "Nombre: " archiveName
    echo "Ingrese la extensión del archivo (Por ejemplo 'txt')"
    read -p "Extensión: " archiveExtension
    touch $archiveName.$archiveExtension

;;



2)
    echo "Ingrese el primer número"
    read -p "a = " numberA
    
    echo "Ingrese el segundo número"
    read -p "b = " numberB


    echo "El resultado es : $((numberA *= numberB))"

;;



3)
    echo "¿En qué año Colón llegó por primera vez a América?"
    read -p "Respuesta: " answer
    
    if [[ $answer == "1492" ]];then
        echo "Muy bien! Esa es la respuesta correcta!"
    else 
        echo "Su respuesta es incorrecta. Fue en el año 1492."
    fi
;;

4)
    echo "Ingrese un nombre de usuario por favor"
    read -p "usuario: " userName
    if [[ $userName == "Nico" ]];then 
        echo "Nombre de usuario válido"
    else 
        echo "Nombre de usuario inválido"
    fi

;;

5)
    exit 0

;;

*) echo "Ingrese una opción válida por favor";;
esac
shift



