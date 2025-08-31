#!/bin/sh

set -e

echo "--- [Proxy] Starting SSL Proxy (socat) in the background... ---"

socat TCP-LISTEN:5432,fork,reuseaddr SSL:${DB_POSTGRESDB_HOST}:${DB_POSTGRESDB_PORT} &

echo "--- [Proxy] socat started. Waiting 2 seconds for it to initialize... ---"
sleep 2

echo "--- [n8n] Starting n8n, but forcing it to connect to our local proxy ---"

export DB_POSTGRESDB_HOST=localhost

exec /usr/local/bin/docker-entrypoint.sh
