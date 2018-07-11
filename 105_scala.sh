#!/bin/bash

#isntall scala
scala_in(){
	apt-get remove scala-library scala
	wget https://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.tgz
	tar xvzf scala-2.11.8.tgz
	rm scala-2.11.8.tgz
	mv scala-2.11.8 /usr/local/share/scala

	echo 'SCALA_HOME=/usr/local/share/scala' >> ~/.bashrc
	echo 'PATH=$PATH:$SCALA_HOME/bin' >> ~/.bashrc
	
	source ~/.bashrc
	
}

sbt(){
	touch /etc/apt/sources.list.d/sbt.list
	echo 'deb https://dl.bintray.com/sbt/debian /' >> /etc/apt/sources.list.d/sbt.list
	
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
	apt-get update
	apt-get install sbt -y

}


scala_in
sbt

