#!/bin/bash
if [ -f .env ]; then
    source .env
fi
cd sql/schema
echo "Database URL: $DATABASE_URL"
goose turso "$DATABASE_URL" up
