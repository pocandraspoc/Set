#!/bin/bash

subl_in(){
	apt-get update
	apt-get upgrade -y
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
	apt-get update
	apt-get install sublime-text -y
	rm -f sublimehq-pub.gpg
}

subl_in
