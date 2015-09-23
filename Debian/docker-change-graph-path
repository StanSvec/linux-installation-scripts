#!/bin/bash
if [ $# -eq 0 ]; then
  echo "you must specify the new directory (absolute path) for docker images"
  exit
fi

entry='DOCKER_OPTS="--dns 8.8.8.8 --dns 8.8.4.4 -g '"$1"'"'
config=/etc/default/docker

if grep -q "$entry" $config; then
  echo "Already set .. Exit!"
  exit
fi

echo $entry >> $config

echo "Done! Restarting docker service"
service docker restart
