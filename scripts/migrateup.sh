#!/bin/bash

# Cambiar al directorio de esquemas SQL
cd sql/schema

# Ejecutar goose con la URL directamente
goose -v turso "libsql://notely-db-cc-jamin-fernandez.turso.io?authToken=eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MzgzNDkyNTUsImlkIjoiMmViN2I2MDgtMzAxYi00Y2FkLWI0MjYtZWIzNGNjZDMyNTg3In0.dar0b2mWcxzhHXDiZ-37uvPkQ7QtSW7W_XMA9jS-_VWnb0OfkskPO5GCUErfRdTUQ-KaDLBYIgS2ANeZVpl2AQ" up
