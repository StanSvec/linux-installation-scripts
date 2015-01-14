#!/bin/bash
if [ $# -eq 0 ]; then
  echo "you must specify the new directory (absolute path) for docker images"
  exit
fi
echo 'DOCKER_OPTS="--dns 8.8.8.8 --dns 8.8.4.4 -g '"$1"'"' >> /etc/default/docker
service docker restart
