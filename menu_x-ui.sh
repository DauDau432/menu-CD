#!/usr/bin/bash

echo " "
echo " ============================================== "
echo " =================== ĐẬU ĐẬU ================== "
echo " ===.•♫•♬•.•♫•♬•  MENU X_UI  •♫•♬•.•♫•♬•.=== "
echo " ============================================== "
echo " (1). Cài đặt X-UI và mở Port cần thiết "
echo " (2). Gỡ cài đặt X_UI "
echo " (3). Cập nhật X_UI "
echo " (4). Dừng bảng điều khiển "
echo " (5). Khởi động bảng điều khiển "
echo " (6). Khởi động lại bảng điều khiển "
echo " (0). Quay lại "
echo " ============================================== "
echo -n " Lựa chọn của bạn là:  "
read so

if [ $so -eq 1 ]
then
        clear
        bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/CD-x-ui/main/CD%20x-ui)
        ./menu_x-ui.sh
        
elif [ $so -eq 2 ]
then
        
        clear
        echo " "
        echo " ★★★ Bấm Y Để Gỡ Cài Đặt X_UI Nếu Nó Hỏi ★★★ "
        x-ui uninstall
        ufw deny 54321
        ./menu_x-ui.sh
        
elif [ $so -eq 3 ]
then
        x-ui update
        clear
        echo " "
        echo " ★★★ Đã Cập Nhật X_UI ★★★ "
        ./menu_x-ui.sh
        
elif [ $so -eq 4 ]
then
        x-ui stop 
        clear
        echo " "
        echo " ★★★ Đã Dừng Bảng Điều Khiển ★★★ "
        ./menu_x-ui.sh    
        
elif [ $so -eq 5 ]
then
        x-ui start  
        clear
        echo " "
        echo " ★★★ Đã Khởi Động Bảng Điều Khiển ★★★ "
        ./menu_x-ui.sh    

elif [ $so -eq 6 ]
then
        x-ui restart 
        clear
        echo " "
        echo " ★★★ Đã Khởi Động Lại Bảng Điều Khiển ★★★ "
        ./menu_x-ui.sh    
        
elif [ $so -eq 0 ]
then
        clear
        exit    
        rm menu_x-ui.sh
        
        exit        
else
        clear
        echo " "
        echo " === Số Bạn Chọn Không Có Trong Bảng Điều Khiển === "
        echo " "
        echo " ============ Chọn sai ời, chọn lại đi ============ "
        ./menu_x-ui.sh
fi
