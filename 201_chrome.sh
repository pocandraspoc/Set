#!/bin/bash

chrome_pre(){
	apt-get update
	apt-get upgrade -y
	apt-get install -y libgconf2-4 libnss3-1d libxss1
}

chrome_in(){
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	dpkg -i --force-depends google-chrome-stable_current_amd64.deb
	rm -f google-chrome-stable_current_amd64.deb
	apt-get -f install -y
}

chrome_pre
chrome_in
