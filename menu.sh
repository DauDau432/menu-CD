#!/usr/bin/bash

rm CD_menu.sh
rm CD_menu.sh.1
rm CD_menu.sh.2
rm CD_menu.sh.3
rm CD_menu.sh.4
rm CD_menu.sh.5
rm CD_menu.sh.6
rm CD_menu.sh.7
rm CD_menu.sh.8
rm CD_menu.sh.9
rm CD_menu.sh.10
rm CD_menu.sh.11
rm CD_menu.sh.12

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

clear
wget https://raw.githubusercontent.com/DauDau432/menu-CD/main/CD_menu.sh
chmod +x CD_menu.sh
./CD_menu.sh
