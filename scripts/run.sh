#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "$DIR"/..

# Port priority: first command-line argument > _BYTEFAAS_RUNTIME_PORT > 8080.
PORT="${1:-${_BYTEFAAS_RUNTIME_PORT:-8080}}"
WORKERS="${2:-192}"

make run-online HOST="''" PORT=${PORT} WORKERS=${WORKERS}