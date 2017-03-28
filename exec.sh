#!/bin/bash
set -x

while ! nc -z postgres 5432; do   
  sleep 1 
done

sleep $SLEEP_BEFORE_EXEC
psql -h postgres -U $PGUSER -h $PGHOST -c "$PGQUERY"
