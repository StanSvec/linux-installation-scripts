#!/bin/bash
if [ $# -eq 0 ]; then
  echo "you must specify the user"
  exit
fi 
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
echo "deb https://get.docker.com/ubuntu docker main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install apparmor
apt-get install lxc-docker
gpasswd -a $1 docker
echo "******** re-login user ********"
