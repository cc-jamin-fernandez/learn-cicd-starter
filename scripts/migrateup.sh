#!/bin/bash

# Cargar variables de entorno desde .env si el archivo existe
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

# Cambiar al directorio de esquemas SQL
cd sql/schema

# Ejecutar goose con la URL entrecomillada
goose -v turso "$DATABASE_URL" up
