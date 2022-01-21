# !/bin/bash

#Programa para aprender tipos de operadores.

numA=10
numB=4

#con ESC + u podemos borrar lo que hicimos anteriormente. 
#para copiar una linea nos ubicamos en la línea que queremos copiar y luego ESC "Y" y luego p
# con ESC númeroLineas + "y" + "y" podemos copiar varias lineas


echo "Operadores aritméticos"
echo "Números: A = $numA ; B = $numB "
echo "Sumar A + B = $((numA+numB))"
echo "Multiplicar A * B = $((numA*numB))"
echo "Dividir A / B = $((numA/numB))"
echo "Residuo A % B = $((numA%numB))"

echo -e"\nOperadores Relacionales"
echo "Números: A = $numA ; B = $numB "
echo "A > B : $((numA > numB))"
echo "A < B : $((numA < numB))"
echo "A >= B :$((numA >= numB))"
echo "A <= B :$((numA <= numB))"
echo "A == B :$((numA == numB))"
echo "A != B :$((numA != numB))"


echo -e"\nOperadores de Asignación"
echo "Números: A = $numA ; B = $numB "
echo "Sumar A += B : $((numA += numB))" 
echo "Restar A -= B : $((numA -= numB))"
echo "Multiplicar A *= B : $((numA *= numB))" 
echo "Dividir A /= B : $((numA /= numB))"
echo "Residuo A %= B : $((numA %= numB))"

 



