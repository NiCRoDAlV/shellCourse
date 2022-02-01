#!/bin/bash
#Programa para practicar breack y continue

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Break y continue "

for file in $(ls)
do
    for name in {1..4}
    do
        if [ $file = "10_download.sh" ]; then
            break;
        elif [[ $file == 4* ]]; then
            continue;
        else

            echo "Nombre archivo: $file _ $name"
        fi
    done
done







