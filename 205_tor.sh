#!/bin/bash

tor_in(){
	mkdir ~/tor2/
	mkdir ~/tor/
	wget https://www.torproject.org/dist/torbrowser/7.5.6/tor-browser-linux64-7.5.6_en-US.tar.xz -P ~/tor2/
	
	tar -xf ~/tor2/tor-browser-linux64-7.5.6_en-US.tar.xz -C ~/tor/
	rm ~/tor2/tor-browser-linux64-7.5.6_en-US.tar.xz
	rm ~/tor2 -fr
}

tor_in
