#!/bin/bash
source .env

docker-compose run --rm --service-ports freeipa exit-on-finished
