#!/bin/bash

# Cargar variables de entorno desde .env si el archivo existe
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

# Depuración: Imprimir la variable DATABASE_URL para verificar que esté correctamente cargada
echo "DATABASE_URL: $DATABASE_URL"

# Cambiar al directorio de esquemas SQL
cd sql/schema

# Ejecutar goose con la URL entrecomillada
goose -v turso "$DATABASE_URL" up
