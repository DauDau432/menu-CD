#!/usr/bin/bash

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

bash <(curl -Ls https://raw.githubusercontent.com/sprov065/x-ui/master/install.sh)
chmod +x install.sh

clear
wget https://raw.githubusercontent.com/DauDau432/menu-CD/main/menu_x-ui.sh
chmod +x menu_x-ui.sh
./menu_x-ui.sh
