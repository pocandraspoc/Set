#!/bin/bash
conda_in(){
	wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
	chmod +x Anaconda3-5.1.0-Linux-x86_64.sh
	./Anaconda3-5.1.0-Linux-x86_64.sh -b
	rm Anaconda3-5.1.0-Linux-x86_64.sh -f
	echo 'PATH=$HOME/anaconda3/bin:$PATH' >> ~/.bashrc
	source ~/.bashrc
	
	#conda create --name insta python=3.6 pip -y
}

conda_in
