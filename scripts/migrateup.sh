#!/bin/bash
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

cd sql/schema
goose -v turso "$DATABASE_URL" up
