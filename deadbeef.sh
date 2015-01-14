#!/bin/bash
INSTALL_DIR="$HOME/Installation/files/deadbeef"
dpkg -i "$INSTALL_DIR/deadbeef-static.deb"
cp $INSTALL_DIR/ddb* /opt/deadbeef/lib/deadbeef
chmod 755 /opt/deadbeef/lib/deadbeef/ddb_misc_filebrowser*
