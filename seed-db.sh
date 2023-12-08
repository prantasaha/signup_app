#!/bin/bash


# Load variables from the .env file using source
if [ -f .env ]; then
  source .env
fi

PG_USER="$DB_USER"
PG_DB="$DB_NAME"
DUMP_FILE=./dump.sql



# Run pg_restore
docker exec -i postgres psql -U $PG_USER -d $PG_DB < $DUMP_FILE
