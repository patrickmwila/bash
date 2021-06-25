#!/usr/bin/bash

figlet "Start the installation of woeUSB"

sudo apt install git p7zip-full python3-pip python3-wxgtk4.0
sudo pip3 install WoeUSB-ng

figlet "Done!"
