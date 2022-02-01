#!/bin/bash

#Menú de opciones - lo vamos a utilizar para manejar las utilidades de Postgres. 

#Autor: Nicolás Rodríguez  -  @chino.rodgz


option=0
#Las funciones deben ser declaradas al inicio del programa


#Función para instalar postgres
postgres_instalation () {
    echo "Instalando postgres"
}

#Función para desinstalar postgres
postgres_uninstalation () {
    echo "Desinstalando postgres"
}


#Función para sacar respaldo
make_backup () {
    echo "Sacando respaldo"
    echo "Directorio de respaldo: $1"
}

#Función para restaurar respaldo
restore_backup () {
    echo "Restaurando respaldo"
    echo "Directorio de restauración: $1"
}

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
            postgres_instalation
            sleep 3
        ;;
        
        2)
            postgres_uninstalation
            sleep 3
        ;;


        3)
            read -p "Directorio en el que se guarda el Backup: " backupDirectory
            make_backup $backupDirectory
            sleep 3
        ;;
        4)
            read -p "Directorio en el que se guarda la restauración: " restoreDirectory
            restore_backup $restoreDirectory
            sleep 3
        ;;
        5)
            echo -e "\nSaliendo del programa"
            sleep 1
            exit 0
   esac

done
        ;;
