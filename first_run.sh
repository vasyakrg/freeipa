#!/bin/bash
source .env

docker run \
    --name freeipa-server-test \
    -it \
    --rm \
    --hostname ${FREEIPA_HOST} \
    --volume ${SERVICE_DATA}:/data:Z \
    --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
    --privileged \
    --security-opt seccomp:unconfined \
    --sysctl net.ipv6.conf.all.disable_ipv6=0 \
    --publish "443:443" \
    --publish "389:389" \
    --publish "636:636" \
    --publish "88:88" \
    --publish "88:88/udp" \
    --publish "464:464" \
    --publish "464:464/udp" \
    ${DOCKER_IMAGE_FREEIPA}
