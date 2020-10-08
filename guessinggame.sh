#!/bin/bash
echo "Bienvenido al juego de la adivinanza de archivos de Unix"
numeroarchivos=$(ls -A | wc -l)
function preguntar { 
	#Comments in english for the approver! Here i check for the input with a message in the same line
	read -p "Intenta adivinar el numero de archivos en la direccion actual: " intento

	#Validate input, if it's not a number it asks again until a number is in
	while [[ -n ${intento//[0-9]/} ]] 
	do
	    read -p "No es un numero! Intenta otra vez : " intento 
	done 
}
preguntar

while [[ $intento -ne $numeroarchivos ]] 
do
	if [[ $intento -gt $numeroarchivos ]]
	then
		echo "Muy arriba"
	else
		echo "Muy abajo"
	fi
	preguntar
done
echo "Muy bien! Haz adivinado con exito el numero de archivos!"
