#!/bin/bash

apt-get remove skype skype-bin:i386 skype:i386
apt-get install sni-qt:i386 -y

dpkg --add-architecture i386
apt-get update
apt-get install gdebi -y

wget download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
yes | gdebi skype-ubuntu-precise_4.3.0.37-1_i386.deb

rm skype-ubuntu-precise_4.3.0.37-1_i386.deb