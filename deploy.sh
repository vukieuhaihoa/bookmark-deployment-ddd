#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

docker-compose up -d postgres redis

sleep 5

docker-compose up -d