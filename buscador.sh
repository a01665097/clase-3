# Busqueda de la palabra "home" mostrando solo rutas

grep -rl "home" "$1"

# Guarda el resultado en una variable

resultados=$(grep -rl "home" "$1" 2>/dev/null)

# Revisa si la variable está vacía
if [ -z "$resultados" ]; then
    echo "Ningún archivo contiene la palabra 'home'."
else
    echo "$resultados"
fi
