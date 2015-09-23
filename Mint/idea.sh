#!/bin/bash
FILES=$HOME/Installation/files
rm -rf /opt/idea
tar -xvf $FILES/idea/ideaIC.tar.gz -C /opt
mv /opt/idea-IC-* /opt/idea
ln -sf /opt/idea/bin/idea.sh /usr/bin/idea.sh
cp -u -p $FILES/idea/IntelliJ.desktop /usr/share/applications
