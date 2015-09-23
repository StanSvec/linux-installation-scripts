#!/bin/bash
INSTALL_DIR="$HOME/Installation/files"
cat $INSTALL_DIR/kodi/repo-entries >> /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-keys 91E7EE5E
gpg --export --armor 91E7EE5E | sudo apt-key add -
