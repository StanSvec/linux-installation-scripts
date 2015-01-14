#!/bin/bash
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java8-installer
java -version
apt-get install oracle-java8-set-default
