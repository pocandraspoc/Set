#!/bin/bash

config(){
	./001_java.sh
	./002_git.sh
	./003_virtualbox.sh
	./004_subl.sh
	./000_reboot.sh
}


languages(){
	./101_ruby.sh
	./102_jdk.sh	
	./103_r.sh
	./105_scala.sh
	./000_reboot.sh
	

}

tools(){
	./201_chrome.sh
	./202_vlc.sh
	./203_nano.sh
	./204_docker.sh
	./000_reboot.sh
	

}

by_user(){
	#./104_conda.sh
	#./205_kafka.sh
}

main(){
	#config
	#languages
	#tools
	#by_user
}

main

