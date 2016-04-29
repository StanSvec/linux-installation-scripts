# Debian Setup
Tested on Debian 8 Stretch (testing)
### Install sudo
```
$ su
# apt install sudo
# adduser $YOUR_USER sudo
```
Log out and log in
***
**Note: The scripts must be run from the root repository directory (not required for all scripts).**
## Gnome customization
### Display date in Gnome Shell panel
```
$ gsettings set org.gnome.desktop.interface clock-show-date true
```
### Numix Icons
Prerequisite: Git is installed
```
# ./numix-icons
```
### Arc Theme
[Git repo](https://github.com/horst3180/arc-theme)
```
sudo apt-get install autoconf; sudo apt-get install pkg-config; sudo apt-get install make; sudo apt-get install libgtk-3-dev; git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme; ./autogen.sh --prefix=/usr; sudo make install; cd..; rm -rf arc-theme
```
### Adapta Theme
[Git repo](https://github.com/tista500/Adapta)
```
sudo apt-get install autoconf; sudo apt-get install pkg-config; sudo apt-get install make; git clone https://github.com/tista500/Adapta.git; cd Adapta; ./autogen.sh; make; sudo make install; cd ..; rm -rf Adapta
```
## Development tools
### Git
```
# apt-get install git
```
### Docker (Stretch/Sid versions only)
(*The user must re-log after the execution. The specified user doesn't have to use sudo for Docker commands.*)
```bash
sudo ./docker $USERNAME
```
#### Changing root path for the Docker runtime (needs review!)
The default location is `/var/lib/docker`. Docker images are downloaded to this directory. Changing of the path can be convinient for example in case you don't have enough space on /var partition.
```
sudo ./docker-change-graph-path $NEW_PATH
```
### **Oracle JDK 8**
```
# ./oracle-java
```
### IntelliJ IDEA
Install or update IDEA and integrate with desktop (adding desktop menu item...).

Prerequisite: Download IDEA archive as `ideaIC.tar.gz` into `files/idea` directory
```
# ./idea
```
Install Sublime Text 3
```bash
sudo ./sublime-text-3
```
Installing **Docker Compose** (formerly named Fig)
```bash
mkdir files/fig
wget https://github.com/docker/fig/releases/download/1.1.0-rc2/docker-compose-`uname -s`-`uname -m` -O ./files/fig/docker-compose
sudo ./docker-compose.sh
```
### DataGrip
Install or update DataGrip and integrate with desktop (adding desktop menu item...)

Prerequisite: Download DataGrip archive as `datagrip.tar.gz` into `files/datagrip` directory
```
# ./datagrip
```
## Other application
### KeePass2
```
# apt-get install keepass2
# apt-get install xdotool
```
### FlashPlayer
Install
```
# apt-get install flashplugin-nonfree
```
Update
```
# update-flashplugin-nonfree --install
```
