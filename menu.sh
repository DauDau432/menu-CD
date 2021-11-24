#!/usr/bin/bash



sudo apt-get update
sudo apt-get install curl
sudo apt-get install bash

clear
wget https://raw.githubusercontent.com/DauDau432/menu-CD/main/CD_menu.sh
chmod +x CD_menu.sh
./CD_menu.sh
