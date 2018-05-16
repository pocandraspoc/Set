#!/bin/bash

#How to add virtual 
virtualbox_in(){
	wget https://download.virtualbox.org/virtualbox/5.1.38/virtualbox-5.1_5.1.38-122592~Ubuntu~xenial_amd64.deb
	dpkg -i virtualbox-5.1_5.1.38-122592~Ubuntu~xenial_amd64.deb
	rm -f virtualbox-5.1_5.1.38-122592~Ubuntu~xenial_amd64.deb
}

virtualbox_ext(){
	wget https://download.virtualbox.org/virtualbox/5.1.38/Oracle_VM_VirtualBox_Extension_Pack-5.1.38.vbox-extpack
	yes | VBoxManage extpack install ./Oracle_VM_VirtualBox_Extension_Pack-5.1.38.vbox-extpack
	rm -f Oracle_VM_VirtualBox_Extension_Pack-5.1.38.vbox-extpack
	apt-get -f install -y
}

virtualbox_guest(){
	apt-get update
	wget https://download.virtualbox.org/virtualbox/5.1.38/VBoxGuestAdditions_5.1.38.iso -P /tmp
	mount -o loop /tmp/VBoxGuestAdditions_5.1.38.iso /mnt
	sh /mnt/VBoxLinuxAdditions.run
	#problems

	
}



virtualbox_in
virtualbox_ext
#virtualbox_guest

#download extension pack

#download guest addition
#wget https://www.virtualbox.org/download/testcase/VBoxGuestAdditions_5.2.7-120528.iso
#https://download.virtualbox.org/virtualbox/5.1.38/VBoxGuestAdditions_5.1.38.iso

