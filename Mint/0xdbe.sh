#!/bin/bash
FILES=$HOME/Installation/files
rm -rf /opt/0xDBE
tar -xvf $FILES/0xdbe/0xdbe.tar.gz -C /opt
mv /opt/0xDBE-* /opt/0xDBE
ln -sf /opt/0xDBE/bin/0xdbe.sh /usr/bin/0xdbe.sh
cp -u -p $FILES/0xdbe/0xDBE.desktop /usr/share/applications
