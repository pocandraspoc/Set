#!/bin/bash

openGL_in(){
	apt-get install libpng-dev libjpeg-dev libxxf86vm1 libxxf86vm-dev libxi-dev libxrandr-dev -y
	apt-get install mesa-common-dev -y
	apt-get install mesa-utils-extra libgl1-mesa-dev libglapi-mesa -y
	add-apt-repository ppa:ubuntu-x-swat/updates -y
	apt-get update 
	apt dist-upgrade -y
	apt install mesa-utils -y
	apt-get install cppcheck -y

	#glxinfo | grep "OpenGL version"

}


other_in(){
	add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
	apt-get update
	apt-get install clang-tidy -y
	apt-get install freeglut3-dev -y
	apt-get install build-essential checkinstall -y
	apt-get install kicad -y

	apt-get install libimlib2-dev -y
	apt-get install libxext-dev -y
	apt-get install libpng-dev -y
	apt-get install libimlib2-dev -y
	apt-get install libglew-dev -y
	apt-get install libxrender-dev -y
	apt-get install libxrandr-dev -y
	apt-get install libglm-dev -y
}


openGL_in
other_in

apt-get install libpng-dev libjpeg-dev libxxf86vm1 libxxf86vm-dev libxi-dev libxrandr-dev -y
apt-get install mesa-common-dev -y
apt-get mesa-utils-extra libgl1-mesa-dev libglapi-mesa sqlite3 -y



#https://github.com/naelstrof/slop/issues/44

# build-dep what is this?
#https://forums.ogre3d.org/viewtopic.php?t=80645
