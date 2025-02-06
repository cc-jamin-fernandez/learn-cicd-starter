#!/bin/bash

if [ -f .env ]; then
    source .env
fi

if [ -z "$DATABASE_URL" ]; then
    echo "DATABASE_URL is not set"
    exit 1
fi

cd sql/schema
goose turso "$DATABASE_URL" up
