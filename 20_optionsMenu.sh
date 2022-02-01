#!/bin/bash

#Menú de opciones - lo vamos a utilizar para manejar las utilidades de Postgres. 

#Autor: Nicolás Rodríguez  -  @chino.rodgz


option=0


#Con el siguiente while logramos que el programa no termine hasta que el usuario ingrese la opcion 5. 

while :
do
    clear 
    #Desplegar menú de opciones
    echo "-------------------------------------------"
    echo "PGUTIL - Programa de utilidades de Postgres"
    echo "-------------------------------------------"
    echo "               MENÚ PRINCIPAL              "
    echo "-------------------------------------------"
    echo "(1) Instalar Postgres"
    echo "(2) Desinstalar Postgres"
    echo "(3) Sacar un respaldo"
    echo "(4) Restaurar respaldo"
    echo "(5) Salir"


    #Obtenemos la opción del usuario
    read -p "Ingrese una opción [1-5]:  " option

    #validar la opción ingresada

    case $option in 
        1)
            echo -e "\nInstalando Postgres"
            sleep 3
        ;;
        
        2)
            echo -e "\nDesinstalando Postgres"
            sleep 3
        ;;


        3)
            echo -e "\nSacando respaldo"
            sleep 3
        ;;
        4)
            echo -e "\nRestaurando Postgres"
            sleep 3
        ;;
        5)
            echo -e "\nSaliendo del programa"
            sleep 1
            exit 0
   esac

done
        ;;
