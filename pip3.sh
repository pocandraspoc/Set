#!/bin/bash
pip_in3(){

	NOTE="Install python pip3"
	echo $NOTE
	apt-get update
	apt-get -y upgrade
	
	#apt-get install unzip -y
	apt-get install python3-setuptools -y
	apt-get install python3-pip -y
	pip3 install --upgrade pip
	apt-get install python3-dev -y	
	apt-get install python3-numpy -y
	apt-get install python3-wheel -y

	pip3 install requests 
	pip3 install tabulate	
	pip3 install tensorflow
	pip3 install tweepy
	pip3 install pykafka
	pip3 install kafka-python
	pip3 install pandas

	
	python3 -m pip install ipykernel
	pip3 install --upgrade "ipython[all]"

}

pip_in3