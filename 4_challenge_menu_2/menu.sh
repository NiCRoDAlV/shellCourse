#!/bin/bash

#Menú de opciones 

#Autor: Nicolás Rodríguez  -  @chino.rodgz


option=0



while :
do
    clear 
    #Desplegar menú de opciones
    echo "-------------------------------------------"
    echo "               MENÚ PRINCIPAL              "
    echo "-------------------------------------------"
    echo "(1) Procesos actuales"
    echo "(2) Memoria disponible"
    echo "(3) Espacio de disco"
    echo "(4) Información de red"
    echo "(5) Variables de entorno configuradas"
    echo "(6) Información de programa"
    echo "(7) Backup información"
    echo "(8) Salir"



    #Obtenemos la opción del usuario
    read -p "Ingrese una opción [1-8]:  " option

    #validar la opción ingresada

    case $option in 
        1)
            echo -e "\nProcesos actuales"
            sleep 3
        ;;
        
        2)
            echo -e "\nMemoria disponible"
            sleep 3
        ;;


        3)
            echo -e "\nEspacio disco"
            sleep 3
        ;;
        4)
            echo -e "\nInformación de red"
            sleep 3
        ;;
        5)
            echo -e "\nVariables de entorno configuradas"
            sleep 3
        ;;
        6)
            echo -e "\nInformación programa"
            sleep 3
        ;;
        7)
            echo -e "\nBackup información"
            sleep 3
        ;;
        8)
            clear
            echo -e "\nSaliendo del programa..."
            sleep 1
            exit 0
        ;;
   esac

done
        
