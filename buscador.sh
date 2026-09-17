#Validar si se pasó un argumento
if [ $# -eq 0 ] || [ -z "$1" ]; then
	echo "Error: Debes inidicar una carpeta."
	exit 1
fi

#Validar si la carpeta existe
if [ ! -d "$1" ]; then
	echo "Error: La carpeta '$1' no existe."
	exit 1
fi
