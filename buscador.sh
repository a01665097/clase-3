# Busqueda de la palabra "home" mostrando solo rutas

grep -rl "home" "$1"

#Validar si se pasó un argumento
if [ $# -eq 0 ] || [ -z "$1" ]; then
	echo "Error: Debes inidicar una carpeta."
	exit 1
fi

#Validar si la carpeta existe
if [ ! -d "$1" ]; then
	echo "Error: La carpeta '$1' no existe."
	exit 1
  
# Guarda el resultado en una variable
resultados=$(grep -rl "home" "$1" 2>/dev/null)

# Revisa si la variable está vacía
if [ -z "$resultados" ]; then
    echo "Ningún archivo contiene la palabra 'home'."
else
    echo "$resultados"
fi
