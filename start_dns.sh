#!/usr/bin/env sh
docker start docker-dns || docker run -d \
    -v /var/run/docker.sock:/tmp/docker.sock \
    -v /etc/hosts:/tmp/hosts \
    --name docker-dns \
    dvdarias/docker-hoster
