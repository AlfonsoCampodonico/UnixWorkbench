all: README.md

README.md: guessinggame.sh
	echo "Curso Coursera Unix Workbench" > README.md
	echo -n "Fecha de Creacion: " >> README.md
	date >> README.md
	echo -n "Numero de lineas en el shell: " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md