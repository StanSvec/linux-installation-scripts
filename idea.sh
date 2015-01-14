#!/bin/bash
FILES=$HOME/Installation/files
tar -xvf $FILES/idea/ideaIC.tar.gz -C /opt
mv /opt/idea-IC-* /opt/idea
ln -s /opt/idea/bin/idea.sh /usr/bin/idea.sh
cp $FILES/idea/IntelliJ.desktop /usr/share/applications
