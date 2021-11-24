#!/usr/bin/bash

rm menucaidat.sh
rm menucaidat.sh.1
rm menucaidat.sh.2
rm menucaidat.sh.3
rm menucaidat.sh.4
rm menucaidat.sh.5
rm menucaidat.sh.6
rm menucaidat.sh.7
rm menucaidat.sh.8
rm menucaidat.sh.9
rm menucaidat.sh.10
rm menucaidat.sh.11
rm menucaidat.sh.12

clear
sudo apt-get update
sudo apt-get install curl
sudo apt-get install bash

rm menu_x-ui.sh
rm menu_x-ui.sh.1
rm menu_x-ui.sh.2
rm menu_x-ui.sh.3
rm menu_x-ui.sh.4
rm menu_x-ui.sh.5
rm menu_x-ui.sh.6
rm menu_x-ui.sh.7
rm menu_x-ui.sh.8
rm menu_x-ui.sh.9
rm menu_x-ui.sh.10
rm menu_x-ui.sh.11
rm menu_x-ui.sh.12

wget https://raw.githubusercontent.com/DauDau432/menu-CD/main/menu_x-ui.sh
chmod +x menu_x-ui.sh

clear
wget https://raw.githubusercontent.com/DauDau432/menu-CD/main/menucaidat.sh
chmod +x menucaidat.sh
./menucaidat.sh
