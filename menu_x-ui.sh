#!/usr/bin/bash

echo " "
echo " ============================================== "
echo " =================== ĐẬU ĐẬU ================== "
echo " .•♫•♬•.•♫•♬•  MENU CÀI ĐẶT VPS  •♫•♬•.•♫•♬•. "
echo " ============================================== "
echo " (1). Menu X-ui "
echo " (2). Cài đặt SpeedTest VPS "
echo " (3). Cài đặt tăng tốc VPS "
echo " (4). Đổi mật khẩu VPS "
echo " (5). Cập nhật VPS "
echo " (0). Đóng menu "
echo " ============================================== "
echo -n " Lựa chọn của bạn là:  "
read so

if [ $so -eq 1 ]
then
        clear
        bash menu_x-ui.sh
        ./menu_x-ui.sh
        
elif [ $so -eq 2 ]
then
        clear
        echo " "
        echo " ★★★ Bấm Y Để Đồng Ý Với Giấy Phép Nếu Bạn Cài Lần Đầu ★★★ "
        bash <(curl -Ls https://raw.githubusercontent.com/DauDau432/CD-speedtest/main/speedtest)
        ./menu_x-ui.sh
        
elif [ $so -eq 3 ]
then
        clear
        echo " "
        echo " ★★★ Triển Khai Tăng Tốc Cho Bạn ★★★ "
        wget -N --no-check-certificate "https://github.000060000.xyz/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
        ./menu_x-ui.sh
        
elif [ $so -eq 4 ]
then
        clear
        echo " "
        echo " ★ Mời Bạn Nhập Mật Khẩu Mới Và Xác Nhận Lại Mật Khẩu ★ "
        echo " "
        echo " = Mật Khẩu Bảo Mật Nên Không Nhìn Được Đâu, Nhập Đi = "
        echo " ------------------------------- "
        lsb\_release -a
        echo " ------------------------------- "
        echo " Bắt Đầu Nhập... "
        passwd
        echo " ------------------------------- "
        ./menucaidat.sh    
        
        elif [ $so -eq 5 ]
then
        clear
        apt_get update -y
        clear
        echo " "
        echo " Đã Cập Nhật VPS "
        ./menucaidat.sh
        
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
