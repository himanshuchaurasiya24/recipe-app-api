#!/bin/sh
set -e
# Wait for DB to be available before running any command
cd /app
echo "Waiting for DB (entrypoint)..."
python manage.py wait_for_db

# Execute the container command
exec "$@"
