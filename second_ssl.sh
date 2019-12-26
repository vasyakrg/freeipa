#!/usr/bin/env bash

source .env

docker exec -it ${CONTAINER_NAME_FREEIPA} bash -c '/usr/local/sbin/install.sh && /usr/local/sbin/renew.sh'
