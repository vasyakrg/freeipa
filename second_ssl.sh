#!/usr/bin/env bash

source .env

docker exec -it ${SERVICE_NAME}_${CONTAINER_NAME_FREEIPA} bash -c '/usr/local/sbin/install.sh && /usr/local/sbin/renew.sh'
