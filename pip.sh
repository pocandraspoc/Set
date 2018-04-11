#!/bin/bash
pip_in(){

	NOTE="Install python pip"
	echo $NOTE
	apt-get update
	apt-get -y upgrade
	
	apt-get install unzip -y
	apt-get install python-setuptools -y
	apt-get install python-pip -y
	apt-get install python-dev -y	
	apt-get install python-numpy -y
	apt-get install python-wheel -y
	apt-get install libcupti-dev -y
	apt-get install ipython-notebook -y

	pip install --upgrade pip
	pip install ipython
	pip install requests 
	pip install tabulate	
	pip install tensorflow
	pip install tweepy
	pip install pykafka
	pip install kafka-python
	pip install pandas

	apt-get -y install python3-pip
	python3 -m pip install ipykernel
	pip install --upgrade "ipython[all]"

}

pip_in