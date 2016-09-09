#!/usr/bin/env bash

# FF
echo "deb http://packages.linuxmint.com debian import" > /etc/apt/sources.list.d/firefox.list
apt-get -qq update
apt-get -qq install firefox

# all
apt-get -qq install curl nano git htop

# GUI with Gnome3
apt-get -qq install aptitude tasksel
tasksel install gnome-desktop --new-install
apt-get -qq install gdm3
service gdm start &




