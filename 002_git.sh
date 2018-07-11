#!/bin/bash

git_in(){
	apt-get update
	apt-get -f install -y
	apt-get install git -y
}

git_in
