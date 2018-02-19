#!/bin/bash

#How to add virtual 

wget https://download.virtualbox.org/virtualbox/5.2.6/virtualbox-5.2_5.2.6-120293~Ubuntu~xenial_amd64.deb
dpkg -i virtualbox-5.2_5.2.6-120293~Ubuntu~xenial_amd64.deb
rm -f virtualbox-5.2_5.2.6-120293~Ubuntu~xenial_amd64.deb

#download extension pack
wget https://download.virtualbox.org/virtualbox/5.2.6/Oracle_VM_VirtualBox_Extension_Pack-5.2.6-120293.vbox-extpack
yes | VBoxManage extpack install ./Oracle_VM_VirtualBox_Extension_Pack-5.2.6-120293.vbox-extpack
rm -f Oracle_VM_VirtualBox_Extension_Pack-5.2.6-120293.vbox-extpack
apt-get -f install -y
#download guest addition
#wget https://www.virtualbox.org/download/testcase/VBoxGuestAdditions_5.2.7-120528.iso
