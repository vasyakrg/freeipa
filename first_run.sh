#!/bin/bash
source .env

[ ! -f ${SERVICE_DATA}/ipa-server-install-options ] && {
    echo "--password=${FREEIPA_PASS}" > ${SERVICE_DATA}/ipa-server-install-options
    echo "--admin-password=${FREEIPA_PASS}" >> ${SERVICE_DATA}/ipa-server-install-options
}

docker-compose run --rm --service-ports freeipa exit-on-finished

# docker run --name ${CONTAINER_NAME_FREEIPA} -ti --rm \
#     -h ${FREEIPA_HOST} \
#     -e PASSWORD=${FREEIPA_PASS} \
#     -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
#     --tmpfs /run --tmpfs /tmp \
#     -v ${SERVICE_DATA}:/data:Z ${DOCKER_IMAGE_FREEIPA} exit-on-finished -U -r ${FREEIPA_REALM} --no-ntp
