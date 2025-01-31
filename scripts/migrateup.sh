
#!/bin/bash
if [ -f .env ]; then
    source .env
fi
cd sql/schema
echo "Full Database URL: $DATABASE_URL"
goose -v turso "$DATABASE_URL" up
