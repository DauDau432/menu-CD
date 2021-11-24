#!/usr/bin/bash
sudo su
rm menu.sh.
rm menu.sh.1
rm menu.sh.2
rm menu.sh.3
rm menu.sh.4
rm menu.sh.5
rm menu.sh.6
rm menu.sh.7
rm menu.sh.8
rm menu.sh.9
rm menu.sh.10
rm menu.sh.11
rm menu.sh.12

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

sudo apt-get update
sudo apt-get install curl
sudo apt-get install bash

wget https://raw.githubusercontent.com/DauDau432/menu-CD/main/menu_x-ui.sh
chmod +x menu_x-ui.sh

wget https://raw.githubusercontent.com/sprov065/x-ui/master/install.sh

clear
wget https://raw.githubusercontent.com/DauDau432/menu-CD/main/menu.sh
chmod +x menu.sh
./menu.sh
