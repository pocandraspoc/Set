#!/bin/bash

py36(){
	add-apt-repository ppa:deadsnakes/ppa -y
	apt-get update
	apt-get install python3.6 -y
}

py36