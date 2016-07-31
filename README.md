# Debian Setup
Tested on Debian 8 Stretch (testing)
### Install sudo
```
$ su
# apt install sudo
# adduser $YOUR_USER sudo
```
Log out and log in

**Note: Some of the scripts or commands must be executed from the root (repository) directory.**
***
## 1. Gnome customization
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
#### Preparation (run only for the first time)
```
sudo apt-get install autoconf; sudo apt-get install pkg-config; sudo apt-get install make; sudo apt-get install libgtk-3-dev; git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme; ./autogen.sh --prefix=/usr; sudo make install; cd..; rm -rf arc-theme
```
#### Installation / Update
```
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme; ./autogen.sh --prefix=/usr; sudo make install; cd ..; rm -rf arc-theme
```
### Adapta Theme
[Git repo](https://github.com/tista500/Adapta)
```
sudo apt-get install autoconf; sudo apt-get install pkg-config; sudo apt-get install make; git clone https://github.com/tista500/Adapta.git; cd Adapta; ./autogen.sh; make; sudo make install; cd ..; rm -rf Adapta
```
## 2. Development tools
### Git
```
# apt-get install git
```
### Docker (Stretch/Sid versions only)
(*The user must re-log after the execution. The specified user doesn't need root privileges when execute Docker commands.*)
```bash
# ./docker $USERNAME
```
#### Changing root path for the Docker runtime (outdated - may need review)
The default location is `/var/lib/docker`. Docker images are downloaded into this directory. Changing of the path can be convinient for example in case you don't have enough space on /var partition.
```
# ./docker-change-graph-path $NEW_PATH
```
### Docker Compose (formerly named Fig)
Install or Update (current version 1.8)
```bash
# ./docker-compose
```
### Oracle JDK 8
```
# ./oracle-java
```
### IntelliJ IDEA
Install or update IDEA and integrate with desktop (adding desktop menu item...).

Prerequisite: Download IDEA archive as `ideaIC.tar.gz` into `files/idea` directory
```
# ./idea
```
### DataGrip
Install or update DataGrip and integrate with desktop (adding desktop menu item...)

Prerequisite: Download DataGrip archive as `datagrip.tar.gz` into `files/datagrip` directory
```
# ./datagrip
```
### Install Sublime Text 3
```bash
# ./sublime-text-3
```

## 3. Miscellaneous
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
### Certificates for Viber
This fixes `No Connection` issue:
```
# ./viber-certs
```
Choose Ask - then select `mozilla/thawte_Premium_Server_CA.crt`
