#!/bin/bash

config(){
	./001_java.sh
	./002_git.sh
	./003_virtualbox.sh
	./004_subl.sh
	#./000_reboot.sh
}


languages(){
	./101_ruby.sh
	./102_jdk.sh	
	./103_r.sh
	./104_OpenGL.sh
	./105_scala.sh
	#./000_reboot.sh
	

}

tools(){
	./201_chrome.sh
	./202_vlc.sh
	./203_nano.sh
	./204_docker.sh
	./205_tor.sh
	#./000_reboot.sh
	

}

by_user(){
	./301_conda.sh
	./302_kafka.sh
}

main(){
	config
	languages
	tools
	by_user
}

main

