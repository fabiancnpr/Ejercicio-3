#!/bin/bash

echo "Buscando correos electrónicos en los logs..."

# Crear archivo de salida
OUTPUT="emails.txt"
> $OUTPUT

# Expresión regular simple para emails
REGEX='[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'

# Buscar en todos los logs
grep -rhoE "$REGEX" logs/ >> $OUTPUT

# Eliminar duplicados
sort -u $OUTPUT -o $OUTPUT

echo "Correos encontrados:"
cat $OUTPUT
