#!/bin/bash
if [ -f .env ]; then
    source .env
fi
cd sql/schema
libsql-migrate -d "$DATABASE_URL" up
